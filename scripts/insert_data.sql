INSERT INTO project."user" (yandex_id, first_name, last_name, email, role)
VALUES (1, 'Денис', 'Войтенко', 'testuser@phystech.edu', 'user'),
       (2, 'Игорь', 'Войтенко', 'testuser@phystech.edu', 'user'),
       (3, 'Максим', 'Максимович', 'testuser@phystech.edu', 'user'),
       (4, 'Кент', 'Бек', 'testuser@phystech.edu', 'god'),
       (5, 'Крис', 'Ричардсон', 'testuser@phystech.edu', 'god'),
       (6, 'Даниил', 'Даниилович', 'testuser@phystech.edu', 'user'),
       (7, 'Макан', 'Маканович', 'testuser@phystech.edu', 'user'),
       (8, 'Рита', 'Ритовна', 'testuser@phystech.edu', 'user'),
       (9, 'София', 'Софьяновна', 'testuser@phystech.edu', 'user'),
       (10, 'Рома', 'Романов', 'testuser@phystech.edu', 'user');

INSERT INTO project."wallet" (owner_id) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO project.transaction (amount, name, description, wallet_id) VALUES
       (100.00, 'Аренда вещи', 'I', 1),
       (100.00, 'Аренда вещи', 'will', 2),
       (100.00, 'Аренда вещи', 'never', 3),
       (100.00, 'Аренда вещи', 'give', 4),
       (100.00, 'Аренда вещи', 'you', 5),
       (100.00, 'Аренда вещи', 'up', 6),
       (100.00, 'Аренда инструментов', 'Аренда Карты', 7),
       (100.00, 'Аренда инструментов', 'Аренда Камня', 7),
       (100.00, 'Аренда инструментов', 'Аренда Бензопилы', 8),
       (100.00, 'Аренда комнаты', 'Аренда Подвала', 8);


INSERT INTO project.item (cost) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO project.rent ("from", "to", item_id, transaction_id, issuer) VALUES
        (TO_TIMESTAMP('1970-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 1, NULL, 1),
        (TO_TIMESTAMP('1971-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 2, NULL, 1),
        (TO_TIMESTAMP('1972-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 3, NULL, 1),
        (TO_TIMESTAMP('1973-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 4, NULL, 1),
        (TO_TIMESTAMP('1974-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 5, NULL, 1),
        (TO_TIMESTAMP('1975-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 6, NULL, 1),
        (TO_TIMESTAMP('1976-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 7, NULL, 1),
        (TO_TIMESTAMP('1977-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 8, NULL, 1),
        (TO_TIMESTAMP('1978-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 9, NULL, 1),
        (TO_TIMESTAMP('1979-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), now(), 10, NULL, 1);
