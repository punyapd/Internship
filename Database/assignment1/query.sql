CREATE TYPE user_role AS ENUM('author', 'admin');

CREATE TABLE
    users(
        id serial NOT NULL PRIMARY KEY,
        username VARCHAR(30) NOT NULL UNIQUE,
        password VARCHAR(20) NOT NULL,
        role user_role NOT NULL
    );

CREATE TYPE posts_status AS ENUM('draft', 'rejected' , 'published');

CREATE TABLE
    posts(
        id serial NOT NULL PRIMARY KEY,
        title VARCHAR(100) NOT NULL,
        content TEXT NOT NULL,
        status posts_status NOT NULL,
        created_at TIMESTAMP DEFAULT NOW(),
        updated_at TIMESTAMP DEFAULT NULL,
        user_id INT NOT NULL,
        Foreign Key (user_id) REFERENCES users(id) ON DELETE NO ACTION
    );

CREATE TABLE
    post_metadata(
        post_id INT NOT NULL,
        Foreign Key (post_id) REFERENCES posts(id) ON DELETE NO ACTION,
        views BIGINT DEFAULT 0,
        featured BOOLEAN DEFAULT FALSE
    );

CREATE TABLE
    categories(
        post_id int NOT NULL,
        Foreign Key (post_id) REFERENCES posts(id) ON DELETE NO ACTION,
        name VARCHAR(30) NOT NULL UNIQUE,
        description VARCHAR(100) NOT NULL
    );

CREATE TABLE
    tags(
        post_id int NOT NULL,
        Foreign Key (post_id) REFERENCES posts(id) ON DELETE NO ACTION,
        name VARCHAR(30) NOT NULL UNIQUE,
        description VARCHAR (100) NOT NULL
    );

CREATE TABLE
    comments(
        id SERIAL NOT NULL PRIMARY KEY,
        user_id INT NOT NULL,
        post_id INT NOT NULL,
        Foreign Key (user_id) REFERENCES users(id) ON DELETE NO ACTION,
        Foreign Key (post_id) REFERENCES posts(id) ON DELETE NO ACTION,
        comment
            TEXT NOT NULL,
            created_at TIMESTAMP DEFAULT NOW(),
            deleted_at TIMESTAMP DEFAULT NULL
    );

CREATE TABLE
    replies(
        comment_id INT NOT NULL,
        Foreign Key (comment_id) REFERENCES comments(id) ON DELETE NO ACTION,
        reply TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT NOW()
    );

--INSERT  NEW USERS  DATA INTO USERS TABLE

INSERT INTO
    users(username, password, role)
VALUES ('punya', 'pass', 'admin'), ('messi', 'pass', 'author'), ('leo', 'pass', 'author');

--INSERT NEW POSTS DATA TO POST TABLE

INSERT INTO
    posts(user_id, title, content, status)
VALUES (
        1,
        'FIFA the Best',
        'messi won the fifa the best award',
        'draft'
    ), (
        2,
        'FIFA the Best',
        'maritinez won the fifa the best goalkepper award',
        'draft'
    );

--PUBLISH THE DRAFTED POSTS

UPDATE posts SET status = 'published' WHERE status = 'draft';

--COMMENTINN ON THE POSTS

INSERT INTO
    comments(
        user_id,
        post_id,
        comment
    )
VALUES (1, 1, 'messi is best'), (1, 2, 'martinez is best');

-- REPLYING THE COMMENT

INSERT INTO
    replies(comment_id, reply)
VALUES ('1', 'no doubt on that!!!');

--ADDING THE CATEGORY

INSERT INTO
    categories(post_id, name, description)
VALUES (
        '1',
        'sports',
        'i am sports category'
    );

--ADDING THE TAG

INSERT INTO
    tags(post_id, name, description)
VALUES (
        '1',
        'fifa',
        'this is a tag for post 1'
    );

--Add metadata to the post

INSERT INTO
    post_metadata(post_id, views, featured)
VALUES ('1', '2000', TRUE);

--RERTIEVE FEATURED POSTS

SELECT
    posts.title,
    posts.content,
    post_metadata.featured
FROM posts
    INNER JOIN post_metadata ON posts.id = post_metadata.post_id
WHERE
    post_metadata.featured = false;

--RETRIEVE POPULAR POSTS

SELECT
    posts.id,
    posts.title,
    posts.content,
    post_metadata.views
FROM posts
    INNER JOIN post_metadata ON post_metadata.post_id = posts.id
WHERE post_metadata.views = (
        SELECT
            MAX(post_metadata.views)
        FROM post_metadata
    );

--RETREIVING POST BY CATEGORY OR TAG

SELECT
    posts.title,
    posts.content,
    categories.name
FROM posts
    JOIN categories ON posts.id = categories.post_id
WHERE
    categories.name = 'other';

SELECT
    posts.title,
    posts.content,
    tags.name
FROM posts
    JOIN tags ON posts.id = tags.post_id
WHERE tags.name = 'fifa';