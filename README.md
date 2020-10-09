# Scrabble Score Checker

#### An application that allows users to track projects and volunteers working on them. 6/1/17

#### By **Ophelia Swen**

## Description

A website created with Ruby and HTML where a user can view, add, update, and delete projects. A user can also view and volunteers and add volunteers to a project. 


## Setup/Installation Requirements

1. Open terminal and navigate to "cd Desktop"
2. Clone repository with git clone ""
3. Run gem install bundler and run bundle install in command line to download all dependencies
4. Run tests in the command line with rspec
5. You can create a copy of the database by running psql in the terminal : psql volunteer_tracker < database_backup.sql
```
CREATE DATABASE volunteer_tracker;
\c volunteer_tracker
CREATE TABLE volunteers (id serial primary key, name varchar, project_id int);
CREATE TABLE projects (id serial primary key, name varchar);
CREATE DATABASE volunteer_tracker_test WITH TEMPLATE volunteer_tracker;
```
6. Run application in the browser of choice by typing ruby app.rb in the terminal
7. Enter in "localhost:4567" in your browser of choice

## Known Bugs
* No known bugs at this time.

## Technologies Used
* Ruby
  * Gems: Pry, RSpec, PG, Sinatra, Sinatra-Contrib, Capybara
* HTML
* Postgres 
* PSQL

## Support and contact details

_Email no one with any questions, comments, or concerns._

### License

*{This software is licensed under the MIT license}*

Copyright (c) 2017 **_Ophelia Swen_**