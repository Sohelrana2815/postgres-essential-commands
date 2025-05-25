CREATE TABLE "user" ( id SERIAL PRIMARY KEY, username VARCHAR(25) NOT NULL );

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE);
    


create table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INTEGER REFERENCES "user" (id) on delete set NULL
)

Create Table post (
    id SERIAL PRIMARY KEY,
    title text not NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
);


ALTER Table post 
 ALTER fCOLUMN user_id SET not NULL


INSERT INTO "user" (username)
VALUES ('Akash'),
('Batash'),
('Shagor'),
('Nodi');

SELECT * FROM "user";

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️',2),
('Batash just shared an amezing recipe',1),
('Exploring adventures with Sagor 🌟',4),
('Nodi''s wisdom always leaves me inspired',4);



SELECT * FROM post;
SELECT * FROM "user";


INSERT INTO post (title,user_id)
VALUES ('test',8)


INSERT INTO post(title,user_id) VALUES ('test',1)

INSERT INTO post(title,user_id) VALUES ('test',NULL)

DELETE FROM "user"
WHERE id = 4;

drop Table "user";

drop table post;

-- Deletion constraint on DELETE user
-- Restrict deletion --> ON DELETE RESTRICT/ ON DELETE NO ACTION (default)
-- 