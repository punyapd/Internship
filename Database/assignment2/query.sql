-- Active: 1677305641780@@127.0.0.1@5432@twitter

CREATE TABLE
    users (
        user_id SERIAL PRIMARY KEY,
        username VARCHAR(255) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW()
    );

CREATE TABLE
    tweets (
        tweet_id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL,
        tweet_text VARCHAR(280) NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
        FOREIGN KEY (user_id) REFERENCES users(user_id)
    );

CREATE TABLE
    followers (
        follower_id INTEGER NOT NULL,
        user_id INTEGER NOT NULL,
        FOREIGN KEY (follower_id) REFERENCES users(user_id),
        FOREIGN KEY (user_id) REFERENCES users(user_id)
    );

CREATE TABLE
    likes (
        like_id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL,
        tweet_id INTEGER NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
        FOREIGN KEY (user_id) REFERENCES users(user_id),
        FOREIGN KEY (tweet_id) REFERENCES tweets(tweet_id)
    );

CREATE TABLE
    comments (
        comment_id SERIAL PRIMARY KEY,
        user_id INTEGER NOT NULL,
        tweet_id INTEGER NOT NULL,
        comment_text VARCHAR(280) NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
        FOREIGN KEY (user_id) REFERENCES users(user_id),
        FOREIGN KEY (tweet_id) REFERENCES tweets(tweet_id)
    );

CREATE TABLE
    hashtags (
        hashtag_id SERIAL PRIMARY KEY,
        hashtag_text VARCHAR(255) UNIQUE NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW()
    );

CREATE TABLE
    tweet_hashtags (
        tweet_id INTEGER NOT NULL,
        hashtag_id INTEGER NOT NULL,
        PRIMARY KEY (tweet_id, hashtag_id),
        FOREIGN KEY (tweet_id) REFERENCES tweets(tweet_id),
        FOREIGN KEY (hashtag_id) REFERENCES hashtags(hashtag_id)
    );

CREATE TABLE
    trending_hashtags (
        trending_hashtag_id SERIAL PRIMARY KEY,
        hashtag_id INTEGER NOT NULL,
        count INTEGER NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
        FOREIGN KEY (hashtag_id) REFERENCES hashtags(hashtag_id)
    );

--INSERTING NEW USER

INSERT INTO
    users (username, email, password)
VALUES (
        'punya',
        'dahalpp55@gmail.com',
        'pass'
    ), ('ram', 'ram@gmail.com', 'pass'), (
        'hariunya',
        'hari@gmail.com',
        'pass'
    );

--login user

SELECT username
from users
WHERE
    username = 'punya'
    AND password = 'pass';

--create tweet

INSERT INTO
    tweets(user_id, tweet_text)
VALUES (1, 'this is my first tweet'), (2, 'this is my second tweet'), (3, 'this is my third tweet'), (1, 'this is my agaian tweet');

--follow users

INSERT INTO
    followers (follower_id, user_id)
VALUES (1, 2), (2, 1), (3, 1), (3, 2);

--list of followers

SELECT
    users.username,
    users.email
FROM followers
    JOIN users ON follower_id = users.user_id
WHERE followers.user_id = 1;


-- liking a tweet
INSERT INTO likes (user_id, tweet_id) VALUES (1, 1) , (2 , 3);

--adding a tag to the tweet
INSERT INTO hashtags (hashtag_text) VALUES ('messi') , ('football') , ('fight');

INSERT INTO tweet_hashtags (tweet_id, hashtag_id) VALUES (1, 1) , (2,2);


INSERT into trending_hashtags (hashtag_id , count) VALUES(1 , 5000) , (2 , 400) , (3 , 333);

--get trending hashtags
 SELECT h.hashtag_text, COUNT(*) as count
FROM hashtags AS h
JOIN tweet_hashtags AS th ON h.hashtag_id = th.hashtag_id
JOIN tweets AS t ON th.tweet_id = t.tweet_id
WHERE t.created_at > NOW() - INTERVAL '24 HOURS'
GROUP BY h.hashtag_text
ORDER BY count DESC
LIMIT 5;

SELECT * FROM tweets WHERE created_at > NOW() - INTERVAL '24 HOURS';


