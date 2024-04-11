# Blueprinter

## Prerequisites

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

## Development

Copy and run the command below:

```bash
cd ~/Projects/blueprinter && task tmuxinator:start
```

This will start the project for you.

Have a look at [.dev/tmuxinator.yml](https://github.com/marian13/blueprinter/blob/main/.dev/.tmuxinator.yml) if you are interested in what is happening under the hood.

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

## Contributing

### Conventions

- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0).
