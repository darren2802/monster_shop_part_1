<img src="/app/assets/images/coverage-100-green.svg">

# Welcome to CoffeeTown!   
Rails project 

## Learning Goals

### Rails
* Implement partials to DRY code
* Implement professional grade user authenication and namespacing thru sessions, Bcrypt, strong paramsand filters

### ActiveRecord 
* Demonstrate the use of ActiveRecord query calls to populate monolith with appropriate data 

### Databases 
* Understand one to many and many to many relational database techniques 
* Practice schema creation and model testing to enforce database requirements

### Contributors:
* Darren - @darren2802  
* Matt S - @msimon42
* Paul D - @PaulDebevec
* Josh O - @jtobannon

## Schema 
<iframe width="560" height="315" src='https://dbdiagram.io/embed/5e44a75d9e76504e0ef161b5'> </iframe>

## Setup

1. Typical Rals setup.  
  * bundle install (occassionally removing the Gemfile.lock and running bundle may be most effective)
  * rails db:{drop, migrate, seed, create}
  * rake rails to run the test suite
  * rails s to run the server

2. This is currently hosted on Heroku
  * https://jpmd-monster-shop.herokuapp.com/

3. Install software dependencies
- Rails 5.1.x
- PostgreSQL
- 'bcrypt' (authenication)

## Highlights

1. Implement FactoryBot to test development
2. 100% model and feature test coverave via simplecov.

## User Roles available in thie ecommerce solution

1. Visitor - this type of user is anonymously browsing our site and is not logged in
1. Regular User - this user is registered and logged in to the application while performing their work; can place items in a cart and create an order
1. Merchant Employee - this user works for a merchant. They can fulfill orders on behalf of their merchant. They also have the same permissions as a regular user (adding items to a cart and checking out)
3. Merchant Admin - this user works for a merchant, and has additional capabilities than regular employees, such as changing merchant info.
3. Admin User - a registered user who has "superuser" access to all areas of the application; user is logged in to perform their work

## Order Progression in thie ecommerce solution

1. 'pending' means a user has placed items in a cart and "checked out" to create an order, merchants may or may not have fulfilled any items yet
2. 'packaged' means all merchants have fulfilled their items for the order, and has been packaged and ready to ship
3. 'shipped' means an admin has 'shipped' a package and can no longer be cancelled by a user
4. 'cancelled' - only 'pending' and 'packaged' orders can be cancelled

## Original Learning Specification
*  
