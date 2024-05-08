Rails 8 Vite React Template is a monolithic React / Ruby application.
It uses Vite for faster development of the Frontend.

## Technologies used

Backend
```
ruby 3.4.2
rails 8.0.2
postgresql
```

Frontend
```
Node v18
Vite
```

##  Getting started
Replace every occurrence of `change_me`, `CHANGE_ME`, `ChangeMe` with the app name you plan to use. Respect the case and the format so that ENV variables and configs are set correctly.

Environment variables are stored in `.env`. A sample file was provided, run `mv .env.sample .env` to rename it so `rails-dotenv` can read them in runtime.
Then do the same for `database.yml` with: `mv config/database.yml.sample  config/database.yml`.

Run `touch config/master.key | rails secret` to create a `master.key`.


## Setup dependencies

```
npm install
bundle install
bundle exec rails db:prepare
bundle exec rails assets:precompile
```

## Start the server

Start Vite dev server with:
```
./bin/vite dev
```
And Rails with:
```
bundle exec rails s
```

Alternatively, you can run both at the same time using `concurrently` with `npm run dev` 

## Run tests
### BE
```
bundle exec rails assets:precompile #if you assets have been changed or it's the first run
bundle exec rails db:prepare RAILS_ENV=test
bundle exec rspec
```

A default test has been setup to do a health check on the installation and it is located at `spec/requests/home_spec.rb`. Remember to remove this test, the route from `config/routes.rb` and the controller from `app/controllers/home_controller.rb` after setting everything up.

### FE
```
npm run test
```

If you want to debug tests and find that output gets truncated I've included `npm run debugtest` where the print limit is increased.
