# Band Gigs

## What is it?

- **A way for bands to post their shows**
- On the Cities page, users can click on a city name to see upcoming events.

- If a city isn't listed, users can add their city.

- On a city's page, users can add events to the website by submitting them in the form, as well as delete or edit events.

- On the events page, users can view the 10 recently added events

# Installation

In a terminal, type the following:

```
git clone git@github.com:jgifford82/phase-3-band-gigs-app.git
cd phase-3-band-gigs-app
code .
```

VSCode should open. Open a terminal in VSCode and type in:

```
bundle install
```

## Migration & Seed

Run the migrations and seed the database by typing in the console:

```
bundle exec rake db:migrate db:seed
```

Alternatively, you can just run the migration without seeding the database by typing this in the console:

```
bundle exec rake db:migrate
```

## Server

To get the backend server to run, type the command line:

```
bundle exec rake server
```

In a browser window, go to http://localhost:9292/cities or http://localhost:9292/events.

## Frontend repo:

https://github.com/jgifford82/phase-3-band-gigs-app-frontend
