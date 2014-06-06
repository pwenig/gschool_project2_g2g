[![Build Status](https://travis-ci.org/pwenig/gschool_project2_g2g.svg?branch=master)](https://travis-ci.org/pwenig/gschool_project2_g2g)
[![Code Climate](https://codeclimate.com/github/pwenig/gschool_project2_g2g.png)](https://codeclimate.com/github/pwenig/gschool_project2_g2g)

#Growlers to Go



## Background
Growlers to Go is an application that lets users order Growlers of beer from featured breweries and have
them delivered to their homes. The application features a monthly-membership (recurring billing), additional
ordering quantities, text message delivery confirmation, email order confirmation...and more to come!

The application is built in Rails and uses a PostgreSQL database. Testing is done using Rspec.

## Important Links

* [Staging](http://growlers-to-go.herokuapp.com)


## Setup

Please follow the steps below to get this site set up for local development.

1. Run Bundle Install
1. Create database by running rake db:create
1. Run migrations with rake db:migrate
4. Run migrations in test database with RACK_ENV=test rake db:migrate
5. Run tests using rspec

## Running on Heroku:
1. To run the migrations on heroku, run heroku run rake db:migrate --app growlers-to-go
