# README

Ruby on Rails Contact Form Assignment

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/shivam-trivedi-cool/assignment.git 
$ cd assignment
```

Change the ruby version to 2.6.5:

```
$ rvm use 2.6.5 
```

Then install the needed gems:

```
$ bundle install
```

Install JavaScript dependencies:

```
$ yarn install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rspec
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```