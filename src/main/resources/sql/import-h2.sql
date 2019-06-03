ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'johndoe@gmail.com', 'johndoe', 'John', 'Doe', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'ana@mail.com', 'ana', 'Ana', 'Surname', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'Title 1',
        '"Быстро и дешево выполню любую халтуру!."',
        --         CURRENT_TIMESTAMP());
        {ts '2016-10-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (2, 1, 'Title 2',
        '"Не могу стоять пока другие работают, пойду полежу."',
        --         CURRENT_TIMESTAMP());
        {ts '2016-11-10 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (3, 1, 'Title 3',
        '"Я вижу Великую Тьму!! Тьфу! Опять капюшон сполз на глаза..."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (4, 1, 'Title 4',
        '"Добавляем картошки, солим... и ставим аквариум на огонь!."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (10, 2, 'Title 10',
        '"Если я ядовитый, то мне конец. Я язык прикусил.."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (11, 3, 'Title 11',
        '"Я не злопамятный, я запишу."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (12, 3, 'Title 12',
        '"Не могу стрелять на трезвую голову!."',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 1,
        '"Опять работа?"',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 2,
        '"Сегодня в 8 клан вар"',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (1, 3,
        '"Как стрелять?"',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 1,
        '"Нашел 8-ми кратный прицел умер на 50-ом месте..."',
        CURRENT_TIMESTAMP());
INSERT INTO COMMENT (post_id, user_id, body, create_date)
VALUES (6, 2,
        '"Вчера TOP 1 занял
        CURRENT_TIMESTAMP());
