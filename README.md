# ruby-getting-started

A simple Rails app based on Heroku bootstrap app for demo purposes.
This was built as part of my project in Computer Forensics and Digital investigations as a way to demonstrate the functionality of
[rails-console-access-check gem](https://github.com/siwS/rails-console-access-check)
 
## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) (formerly known as the Heroku Toolbelt).

```sh
$ git clone git@github.com:siwS/ucd-demo-app.git
$ cd ruby-getting-started
$ bundle install
$ bundle exec rake db:create db:migrate
$ rails server
```

Your app should now be running on [localhost:3000](http://localhost:3000/).
