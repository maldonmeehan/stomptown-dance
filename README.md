#Stomptown Dance Lessons

## Ruby on Rails - Independent Student Project

An app that allows a user to take dance lessons online. Including an dance database for teachers and callers.

By Maldon Meehan

## Description

An Epicodus independent student project using Ruby on Rails.

## Setup/Installation Requirements

```
$ git clone https://github.com/maldonmeehan/stomptown-dance.git
```

Install required gems:
```
$ bundle
```

Run Postgres:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create
```
```
$ rake db:seed
```
```
rake db:migrate && rake db:test:prepare
```

```
$ rails s
```

Navigate to `http://localhost:3000` in your browser of choice.

## API: MailChimp Setup/Installation Requirements
* Create an account with MailChimp at http://mailchimp.com/
* Obtain an API key
* Create a .env file and put
* MAILCHIMP_API_KEY=YOURAPIKEYGOESHERE
* MAILCHIMP_LIST_ID=YOURLISTIDKEYGOESHERE

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon on github

## Technologies Used

* Ruby on Rails
* AJAX
* Postgres

### License

MIT License

Copyright (c) 2016, **Maldon Meehan, Epicodus**
