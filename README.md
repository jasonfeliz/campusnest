
Welcome to CampusNest API

# Technologies

- Ruby on Rails
- Ruby
- ActiveRecord
- postgreSQL


# Planning

I am going to build an online forum for a collection of universities from a database. The user will be able to create a discussion or reply to a discussion inside of their university hub and a user can follow another user. This app will be targeted to college students.


Goals
- Build a workable back-end api using Rails
- Create a simple but clean and modern looking UI with handlebars
- Keep code modular(separate concerns)
- write code that adheres to DRY principles
- write some custom methods inside controllers
- take a deep dive into the Rails architect 


Data Structure

User
* username
* Email ( must be a edu email, validated with js)
* College(each user will belong to a college)
* Interests ( each user will have 3 or more interests)

Colleges
* College name
* College city
* College state
Interests
* Interest(each user will have 5 or more
Discussions
* Title
* body
* User (writer)
* College (each discussion will belong to a college, based on the user’s college
* Interest  (each discussion will belong to an interest or ’topic')

- One of the core functionality of my code is to use Ajax to be able to talk to a server.
- Talking to the server includes:
	- signing up
	- signing in
	- signing out
	- getting all discussions or a single discussion for a user at their chosen college
	- creating a new discussion
	- ability to update and delete a discussions


# Unsolved Problems/Strectch goals
- Add search by title or keyword to search for discussions that matches the query
- Add ability to reply to a discussion
- Add feature that only lets the author of the discussion to remove or edit the post
- Let users browse discussions by topics
- Be able to search for any school in the database.
- Add more schools to the database
- give user the option to delete the account
- give user the option to change schools
- let users search for other users or see other students

# User Stories

- As a user, I want to sign up
- As a user, I want to sign in
- As a user, I want change a password
- As a user, I want to log out of my session
- As a user, I want create a discussion at my campus
- As a user, I want to reply to discussions on campus
- As a user, I want to be able to delete a discussion
- As a suer, I want to be able to delete a reply
- As a user, I want to be able to delete my account
- As a user, I want to be able to search for a collection of colleges
- As a user, I want to be able to filter out discussions based on a interest/topic
- As a user, I want to be able to see users of each university

# Entity relationship diagram
![alt text](https://i.imgur.com/i8k2SWX.png "Logo Title Text 1")
