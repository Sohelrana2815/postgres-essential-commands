CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);


INSERT INTO "user" (username) VALUES
('Akash'),
('Batash'),
('Sagor'),
('Nodi');



INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️',2),
('Batash just shared an amezing recipe',1),
('Exploring adventures with Sagor 🌟',4),
('Nodi''s wisdom always leaves me inspired',4);


CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);






SELECT * FROM "user";
SELECT * FROM post;

DROP TABLE post;
DROP TABLE "user";

SELECT title, username from post
JOIN "user" on post.user_id = "user".id

select title, username from post
join "user" on post.user_id = "user".id; -- condition 

select * from post

select "user".id from post 
join "user" on post.user_id = "user".id;

SELECT * FROM post as P
JOIN "user" as u on P.user_id = u.id;

select * from "user"
join post on post.user_id= "user".id