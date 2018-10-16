# Tools and Gems

In this project I used:
- [Rspec](https://github.com/rspec/rspec-rails) for tests
- [Rubocop](https://github.com/rubocop-hq/rubocop) for static code analysis
- [Factory Bot](https://github.com/thoughtbot/factory_bot) for test data
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) to simplify model specs
- [Versionist](https://github.com/bploetz/versionist) for versioning Rails based RESTful APIs.
- **Ruby** 2.5.1
- **Rails** 5.2.1

# Getting started

Clone the repository
```
git clone https://github.com/emmanuelperotto/api-test
```

Run this commands to create, seed database and run api locally
```
cd api-test
bundle install
rails db:create db:migrate db:seed
rails s
```

# API Endpoints

## Events
#### GET http://localhost:3000/api/v1/events
 - returns a list of all events in the database
#### POST http://localhost:3000/api/v1/events
 - Body JSON format (required)
 ```javascript
{
  "event": {
    "name": "Teste",
    "description": "Teste",
    "lat": -15.783475,
    "lng": -47.899205
  }
}
  ```

## Comments
#### GET http://localhost:3000/api/v1/comments
  - returns a list of all comments in the database
#### GET http://localhost:3000/api/v1/comments?reported=true
  - returns a list of all reported comments in database
#### POST http://localhost:3000/api/v1/comments
 - Body JSON format (required)
 ```javascript
{
  "comment": {
    "text": "Teste",
    "user_id": 1,
    "event_id": 1
  }
}
  ```

# Test Suite
 ```
  bundle exec rspec
 ```