# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Ruby on Rails - Independent Student Project - Stomptown Dance Lessons

An an app allows a user to take dance lessons online, September 8, 2016

By Maldon Meehan

## Description

An Epicodus independent student project using Ruby on Rails.

## Setup/Installation Requirements

Install *Shoe Distribution* by cloning the repository.  
```
$ git clone https://github.com/maldonmeehan/shoe-distribution.git
```

Install required gems:
```
$ bundle install
```

Run Postgress:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Start the Sinatra webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in your browser of choice.

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon on github

## Technologies Used

* Ruby
* Postgres
* Sinatra

### License

MIT License

Copyright (c) 2016, **Maldon Meehan, Epicodus**
