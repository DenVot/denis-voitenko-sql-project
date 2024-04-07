CREATE SCHEMA project;

CREATE EXTENSION citext;

CREATE DOMAIN email AS citext
    CHECK ( value ~
            '^[a-zA-Z0-9.!#$%&''*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$' );

CREATE TYPE transaction_status AS ENUM ('CREATED', 'IN_PROGRESS', 'OK', 'FAILED');

CREATE TABLE project."user" (
    id BIGSERIAL PRIMARY KEY,
    yandex_id BIGINT NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email email NOT NULL,
    role TEXT NOT NULL
);

CREATE TABLE project.item (
    id BIGSERIAL PRIMARY KEY,
    cost NUMERIC(9, 2) NOT NULL
);

CREATE TABLE project.wallet (
    id BIGSERIAL PRIMARY KEY,
    owner_id BIGINT NOT NULL REFERENCES project."user"(id)
);

CREATE TABLE project.transaction (
    id BIGSERIAL PRIMARY KEY,
    amount NUMERIC(9, 2) NOT NULL,
    status transaction_status NOT NULL DEFAULT 'CREATED',
    name TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT now(),
    wallet_id BIGINT NOT NULL REFERENCES project.wallet(id)
);

CREATE TABLE project.rent (
    id BIGSERIAL PRIMARY KEY,
    "from" TIMESTAMP NOT NULL,
    "to" TIMESTAMP NOT NULL,
    item_id BIGINT NOT NULL REFERENCES project.item(id),
    transaction_id BIGINT REFERENCES project.transaction(id),
    issuer BIGINT NOT NULL REFERENCES project."user"(id)
);
