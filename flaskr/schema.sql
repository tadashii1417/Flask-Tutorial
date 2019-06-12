DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

create table user
(
    id       INTEGER PRIMARY KEY ,
    username text unique not null,
    password text        not null
);

create table post
(
    id        INTEGER PRIMARY KEY ,
    author_id INTEGER   not null,
    created   TIMESTAMP not null default current_timestamp,
    title     text      not null,
    body      text      not null,
    FOREIGN KEY (author_id) references user (id)
);
