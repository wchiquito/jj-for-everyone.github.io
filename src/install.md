# Installation and setup

The best installation method depends on your system.
I recommend reading the [official installation instructions](https://jj-vcs.github.io/jj/latest/install-and-setup/).
You can also download a binary directly from the [release page](https://github.com/jj-vcs/jj/releases/latest) or even copy the following commands in your terminal for a completely automatic installation.

```sh
mkdir -p ~/.local/bin
curl --silent --location \
    https://raw.githubusercontent.com/houseabsolute/ubi/master/bootstrap/bootstrap-ubi.sh |
    TARGET=~/.local/bin sh
~/.local/bin/ubi -p jj-vcs/jj
```

Run `jj --version` to verify the installation.
It may be necessary to restart your terminal.

You should tell Jujutsu who you are, so it can track the author of each change.

```sh
jj config set --user user.name "Firstname Lastname"
jj config set --user user.email "email.address@provider.com"
```

If you want shell completions, follow the instructions [here](https://jj-vcs.github.io/jj/latest/install-and-setup/#command-line-completion).
If you don't know what a "shell completion" is, don't worry, it's not important.
