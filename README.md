# Shelter Tonight
More coming soon.


## [WIP] Setting Up Local Dev Environment

*This is still very much a work in progress.*

Since we're wanting to keep our development environment as close to our production environment, we've opted
to use docker to run two services for us:

- MySQL (`:3306`)
- Redis (`:6379`)

Both of these services are accessibly locally via the default docker IP address:

`192.168.99.100`

On your local machine you should be able to run:

`bundle exec foreman server`

*We're using foreman so you don't need to worry about launching sidekiq in another terminal session.*

### Setting up ruby

- We're running ruby `2.4.0` using [rbenv](https://github.com/rbenv/rbenv#installation).
