# README

# Project: Members Only!

In this project, I'll be building an exclusive clubhouse where members can write posts about non-members. Inside the clubhouse, members can see who the author of a post is but, outside, they can only see the story and wonder who wrote it.

[Demo](https://pure-sands-60196.herokuapp.com/)

## Data model
1. Users
  - id
  - name
  - email
  - password
  - password_digest
  - member?
  - created_at
  - updated_at
  - has_many Posts
2. Posts
  - id
  - title
  - body
  - created_at 
  - updated_at
  - belongs_to User
  

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
