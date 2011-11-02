## redrails-session

Redis session store for rails applications.

This lets you store your users' browser sessions in a [redis](http://redis.io/)
database. This is really a very simplistic "glue" gem that allows you to easily
use the [redrack-session](https://github.com/zettabyte/redrack-session) gem to
store your users' sessions in a redis database.

### Usage

All you have to do to use this gem is to:

1. Add it to your `Gemfile`.
2. Edit your `config/initializers/session_store.rb`, configuring your app to use this gem.

###### Example `Gemfile`

```ruby
source "http://rubygems.org"
gem "rails", "3.1.1"
gem "redrails-session"
# ... all your other gems ...
```

###### Example `config/initializers/session_store.rb`

```ruby
require 'redrails-session'
MyApp::Application.config.session_store :redrails_session_store
```

#### Redis Setup

Check out http://redis.io/ for information on installing and configuring a redis
server.

#### Supported Options

When editing your `config/initializers/session_store.rb` file to use
`redrails-session`, there are several options you may provide to configure the
behavior of the session store. These options are the same set of options
supported by the `Redrack::Session::Middleware` class in the
[redrack-session](https://github.com/zettabyte/redrack-session) gem (see its
documentation for more details).

The options you can specify (and their defaults) are:

- `:expires` -- alias for `:expire_after`, lets you specify how long, in seconds, to keep inactive sessions around (forever by default)
- `:key` -- specify name of cookie stored on client's browser that holds their unique session ID (default: ``rails.session'`)
- `:redis_host` -- specify IP address or hostname of host running the redis service (default: `'127.0.0.1'`)
- `:redis_port` -- specify port that the redis service is listening on (default: `6379`)
- `:redis_path` -- alternatively specify filename of socket that redis server is listening on (unset by default)
- `:redis_database` -- specify which database number to store session data in (default: `0`)
- `:redis_namespace` -- optionally specify a string to prefix to all session keys in case you're storing other datasets in the redis database (unset by default)
- `:redis_password` -- optionally specify a string to use to authenticate with the server (unset by default)

### Credits and License

Written by [Kendall Gifford](https://github.com/zettabyte).

Licensed using the standard
[MIT License](http://en.wikipedia.org/wiki/MIT_License). See the file
[LICENSE](http://github.com/zettabyte/redrails-session/blob/master/LICENSE) in
the root folder of the project.
