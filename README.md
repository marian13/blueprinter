# Blueprinter

An app to generate apps.

## Quick Links

| Description | Link |
| - | - |
| Local Blueprinter app | [http://localhost:9000](http://localhost:9000) |

## Development

### Prerequisites

Please, analyze the list of the development dependencies below.

Most of them are not mandatory, but their configurations are committed directly to this repo.

If you prefer to utilize any alternatives, feel free to do it, but the following commands in this README assume their usage.

So it is up to you to translate them to the tool of your choice.

- [macOS](https://www.apple.com/macos/sonoma).

- [Homebrew](https://brew.sh).

- [tmux](https://github.com/tmux/tmux).

- [Tmuxinator](https://github.com/tmuxinator/tmuxinator).

- [asdf](https://asdf-vm.com/#/core-manage-asdf).

- [direnv](https://github.com/asdf-community/asdf-direnv).

- [Docker](https://www.docker.com/products/docker-desktop).

- [Task](https://taskfile.dev).

- [VS Code](https://code.visualstudio.com).

- [Google Chrome](https://www.google.com/intl/en_us/chrome).

## Environment

Copy and run the command below:

```bash
cd ~/Projects/blueprinter && task tmuxinator:start
```

This will start the project for you.

Have a look at [.dev/tmuxinator.yml](https://github.com/marian13/blueprinter/blob/main/.dev/.tmuxinator.yml) if you are interested in what is happening under the hood.

Once you finish development, use `task tmuxinator:stop` to turn off the environment.

## FAQ

### What was the Rails new command?

```bash
$ ruby -v
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [x86_64-darwin22]
```

```bash
$ bundler -v
Bundler version 2.5.7
```

```bash
$ rails -v
Rails 7.1.3.2
```

```bash
$ rails new blueprinter --database=postgresql
```

## Tech Stack

### Backend

- [Rails](https://github.com/rails/rails).

#### I18n

- [Ruby I18n](https://github.com/ruby-i18n/i18n).

### Frontend

- [Turbo](https://github.com/hotwired/turbo-rails).

- [Stimulus](https://github.com/hotwired/stimulus).

#### CSS toolkits

- [Pico](https://github.com/picocss/pico).

#### HTTP Requests

- [Axios](https://github.com/axios/axios).

#### Query Params

- [query-string](https://github.com/sindresorhus/query-string).

#### Toasts

- [siiimple-toast](https://github.com/0xgabii/siiimple-toast).

#### Utilities

- [Lodash](https://github.com/lodash/lodash).

### Databases

- [Postgres](https://github.com/postgres/postgres).

### Tests

- [RSpec](https://github.com/rspec/rspec-rails).

- [Selenium](https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings).

- [Capybara](https://github.com/teamcapybara/capybara).

- [Turnip](https://github.com/jnicklas/turnip).

- [TurnipFormatter](https://github.com/gongo/turnip_formatter).

- [SuperDiff](https://github.com/mcmire/super_diff).

### Debugging

- [Byebug](https://github.com/deivid-rodriguez/byebug).

- [Byebug syntax highlighting](https://gist.github.com/marian13/5dade20a431d7254db30e543167058ce).

- [IRB](https://github.com/ruby/irb).

- [debug.rb](https://github.com/ruby/debug).

- [Pry](https://github.com/pry/pry).

- [Amazing Print](https://github.com/amazing-print/amazing_print).

- [Paint](https://github.com/janlelis/paint).

- [Rouge](https://github.com/rouge-ruby/rouge).

### Linting

- [DbSchemaChecker](https://github.com/kufu/db_schema_checker).

- [Annotate (aka AnnotateModels)](https://github.com/ctran/annotate_models).

### Documenting

- [Rails ERD](https://github.com/voormedia/rails-erd).

### Containerization

- [Ruby](https://github.com/docker-library/ruby).

- [Postgres](https://github.com/docker-library/postgres).

- [Selenium with Chrome](https://github.com/SeleniumHQ/docker-selenium).

### CI

- [GitHub Actions](https://github.com/features/actions).

## Contributing

### Conventions

- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0).

### Must Reads

- [Write Reliable, Asynchronous Integration Tests With Capybara](https://thoughtbot.com/blog/write-reliable-asynchronous-integration-tests-with-capybara#summary).

## Backlog

- Wrap libraries.
