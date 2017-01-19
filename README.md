# README

Ruby on Rails application in the second week of the Codaisseur traineeship.

What was covered:
* PostgreSQL database
* Testing with RSpec and Capybara
* Basic authentication with Devise
* Associations: one-to-many, many-to-many, one-to-one
* Using factories with FactoryGirl and Faker
* Uploading images using CarrierWave and Cloudinary
* Deployment with DEIS
* Basic AJAX

## Getting Started

Make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Rails](http://guides.rubyonrails.org/getting_started.html#installing-rails) installed.

Clone the repository and enter the project directory

Install all dependencies
```bash
bundle install
```

Create database and migrate schema; seed the database
```bash
rake db:create
rake db:migrate
rake db:seed
```

Run the application - it should be available on http://localhost:3000
```bash
rails s
```

## Run the Tests

RSpec is used for the tests. To run it, just type the following in your command prompt:

```bash
 rspec
```
