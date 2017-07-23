-- Write a query to delete a user named michael if it exists
DROP USER IF EXISTS michael;
-- Write a query to create a user named michael with an encrypted password stonebreaker
CREATE USER michael WITH ENCRYPTED PASSWORD 'buysbattleroyaleshirts';
-- Write a query to drop a database named todo_app if it exists
DROP DATABASE IF EXISTS todo_app;
-- Write a query to create a database named todo_app
CREATE DATABASE todo_app;
-- Connect to the newly created database
\c todo_app;
-- Write a query to create a table named tasks using the Initial columns detailed below
-- Define column id as the table's primary key
CREATE TABLE tasks(
id SERIAL NOT NULL PRIMARY KEY,
title VARCHAR(255),
description TEXT NULL,
created_at timestamp without time zone NOT NULL DEFAULT NOW(),
updated_at timestamp without time zone NULL,
completed bool NOT NULL
);
-- Write queries to accomplish the following
-- remove the column named completed
ALTER TABLE tasks DROP COLUMN IF EXISTS completed;
-- add a column to tasks named completed_at:timestamp, that may be NULL, and has a default value of NULL.
ALTER TABLE tasks ADD IF NOT EXISTS completed_at timestamp without time zone;
-- change the updated_at column to not allow NULL values, and have a default value of now()
ALTER TABLE tasks ALTER updated_at SET NOT NULL;
ALTER TABLE tasks ALTER updated_at SET DEFAULT NOW();
-- create a new task, by only setting values (not defining which columns) id = default value
-- title = 'Study SQL'
-- description = 'Complete this exercise'
-- created_at = now()
-- updated_at = now()
-- completed_at = NULL
INSERT INTO tasks (id, title, description, created_at, updated_at, completed_at)
VALUES(DEFAULT,'Study SQL', 'Complete this exercise', NOW(), NOW(), NULL);
-- create a new task
-- title = 'Study PostgreSQL'
-- description = 'Read all the documentation'
INSERT INTO tasks (title, description)
VALUES('Study PostgreSQL', 'Read all the documentation');
-- select all the titles of tasks that are not yet completed
-- update the task with a title of 'Study SQL' to be completed as of now
-- select all titles and descriptions of tasks that are not yet completed
-- select all fields of every task sorted by creation date in descending order
-- create a new task
-- title = 'mistake 1'
-- description = 'a test entry'
-- create a new task
-- title = 'mistake 2'
-- description = 'another test entry'
-- create a new task
-- title = 'third mistake'
-- description = 'another test entry'
-- select title fields of all tasks with a title that includes the word 'mistake'
-- delete the task that has a title of mistake 1
-- select title and description fields of all tasks with a title that includes the word 'mistake'
-- delete all tasks that includes the word 'mistake' in the title
-- select all fields of all tasks sorted by title in ascending order