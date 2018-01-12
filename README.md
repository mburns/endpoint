# Endpoint 

Playing with request inspection in ruby

## Installation

* Have Ruby `v2.3+` installed
* `gem install bundler`
* `bundle install`

## Usage

To start, `cd`  into the project directory and run ``
 * A command to start the application
 * A command to run the unit tests for your application

# Routes

## `GET /`, `POST /`

 * If the request does not send an Accept header, your server responds with: `<p>Hello, World</p>`
 * If the incoming request sets an Accept header with value application/json, your server responds with: `{"message": "Good morning"}`
 
 
# Tests 

* ruby unit tests

## Example commands

* `curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" "http://localhost:8080"`
