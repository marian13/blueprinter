# Blueprinter

## Quick Links

| Description | Link |
| - | - |
| Local Blueprinter app | [http://localhost:8400](http://localhost:8400) |

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

### Tests

- [RSpec](https://github.com/rspec/rspec-rails).

- [Capybara](https://github.com/teamcapybara/capybara).

- [Turnip](https://github.com/jnicklas/turnip).

- [TurnipFormatter](https://github.com/gongo/turnip_formatter).

### Debugging

- [Byebug](https://github.com/deivid-rodriguez/byebug).

- [Byebug syntax highlighting](https://gist.github.com/marian13/5dade20a431d7254db30e543167058ce).

- [IRB](https://github.com/ruby/irb).

- [debug.rb](https://github.com/ruby/debug).

- [Pry](https://github.com/pry/pry).

- [Amazing Print](https://github.com/amazing-print/amazing_print).

- [Paint](https://github.com/janlelis/paint).

- [Rouge](https://github.com/rouge-ruby/rouge).

### CI

- [GitHub Actions](https://github.com/features/actions).

- [DbSchemaChecker](https://github.com/kufu/db_schema_checker).

- [Annotate (aka AnnotateModels)](https://github.com/ctran/annotate_models).

### Documenting

- [Rails ERD](https://github.com/voormedia/rails-erd).

## Contributing

### Conventions

- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0).
