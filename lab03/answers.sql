-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name 
FROM users
ORDER BY last_name asc;



-- Exercise 4
SELECT id, image_url, user_id
FROM posts  
WHERE posts.user_id = 26;



-- Exercise 5
SELECT id, image_url, user_id
FROM posts  
WHERE posts.user_id = 26 OR posts.user_id = 12;



-- Exercise 6
SELECT COUNT(posts) FROM posts;



-- Exercise 7
SELECT user_id, COUNT(text) 
FROM comments
GROUP BY user_id
ORDER BY COUNT(text) desc;



-- Exercise 8
SELECT posts.id, posts.image_url, posts.user_id,
users.username, users.first_name, users.last_name
FROM posts  
JOIN users ON users.id = posts.user_id
WHERE posts.user_id = 26 OR posts.user_id = 12;



-- Exercise 9
SELECT posts.id, posts.pub_date, 
following.following_id
FROM posts  
JOIN following ON following.following_id = posts.user_id
WHERE following.user_id = 26;



-- Exercise 10
SELECT posts.id, posts.pub_date, 
following.following_id, 
users.username
FROM posts  
JOIN following ON following.following_id = posts.user_id
JOIN users ON users.id = posts.user_id
WHERE following.user_id = 26
ORDER BY posts.pub_date desc;



-- Exercise 11
INSERT INTO bookmarks (user_id, post_id, timestamp)
VALUES 
(26, 219, CURRENT_TIMESTAMP),
(26, 220, CURRENT_TIMESTAMP),
(26, 221, CURRENT_TIMESTAMP);



-- Exercise 12
DELETE FROM bookmarks 
WHERE post_id IN (219, 220, 221)



-- Exercise 13
UPDATE users SET email = 'knick2022@gmail.com'
WHERE id=26;



-- Exercise 14
SELECT posts.id, posts.user_id, COUNT(comments.post_id), posts.caption
FROM posts 
JOIN comments on posts.id = comments.post_id
WHERE posts.user_id = 26
GROUP BY posts.id
ORDER BY COUNT(comments.post_id) desc