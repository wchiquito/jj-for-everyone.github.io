# Installation and setup

There are many ways to install Jujutsu and the best one depends on your system.
If you don't care at all about how Jujutsu is installed and you just want to get it over with, you can copy-paste these commands:

```sh
curl https://mise.run | sh
~/.local/bin/mise install-into jujutsu@latest /tmp/jj-install
mv /tmp/jj-install/jj ~/.local/bin
rm -rf /tmp/jj-install
exec $SHELL
```

```admonish info title="Explanation of these commands" collapsible=true
Installing software is more difficult than one might think.
It depends on many factors like CPU architecture and operating system.
That's why there's not a single, easy command we can run to install Jujutsu on any system.
Instead, we first install another program that specializes in installing software called `mise`.
(You can read more about mise on [its website](https://mise.jdx.dev/).)
The first command `curl https://mise.run | sh` downloads and runs a script from the internet that installs `mise` for you.
This is kinda dangerous and you should be careful when executing scripts from the internet.
People could place malicious code at the URL you're downloading the script from.
But the option is there for people who don't care and just want to get up and running quickly.

The second command runs `mise` to download Jujutsu into a temporary directory.
We have to specify the full path to the `mise` binary (`~/.local/bin/mise`), because at this point we don't know if `~/.local/bin` is a location where your shell will search for binaries.
`mise` takes care of downloading the right binary for your operating system and CPU architecture.

The following command moves the downloaded binary to `~/.local/bin`, which is the customary place for user-local programs.
`rm -rf /tmp/jj-install` cleans up the temporary download directory.

Lastly, `exec $SHELL` restarts your shell, which causes its init scripts to run again.
Some Linux distributions like Ubuntu only add `~/.local/bin` to the list of paths to search for executable binaries if it exists when the shell is started.
So, restarting the shell after installing Jujutsu is a simple way to make sure the system will find the new program.

Maybe there are distributions which don't search for programs in `~/.local/bin` **at all**, which would mean those commands don't work on such a system.
I'm not aware of such distrubtions.
(Please [open an issue](https://github.com/jj-for-everyone/jj-for-everyone.github.io/issues/new) if you know of a relevant one!)
```

````admonish info title="Other installation methods" collapsible=true
The official installation instructions for several different platforms are [here](https://jj-vcs.github.io/jj/latest/install-and-setup/).
I will mention a few methods that I consider important as well.

If you use [cargo-binstall](https://github.com/cargo-bins/cargo-binstall), this works great:

```sh
cargo-binstall jj-cli
```

If you're a Mac & Homebrew user, this one's for you:

```sh
brew install jj
```

If you have the Rust toolchain installed and would like to compile from source, you can run:

```sh
cargo install --locked --bin jj jj-cli
```

You can also download a binary directly from the [release page](https://github.com/jj-vcs/jj/releases/latest).
Scroll down to "Assets", there is a list of archives to download.
The right one depends on two things: your operating system and your CPU architecture.
Look for the strings matching your system in the names of the archives.

How to identify your operating system:

| operating system | string to look for |
| --- | --- |
| Linux | unknown-linux-musl |
| Mac | apple-darwin |
| Windows | pc-windows-msvc |

How to identify your CPU architecture:

| CPU brand | string to look for |
| --- | --- |
| Intel | x86_64 |
| AMD | x86_64 |
| Apple | aarch64 |
| ARM | aarch64 |
| Qualcom (Snapdragon) | aarch64 |

Once you have downloaded the right archive, you need to extract it.
You should be able to right-click on the downloaded archive in your file explorer and select "extract" or something similar in the drop-down.
The extracted folder will contain documentation and a file called "jj".
You need to move that into the directory `~/.local/bin/`.
(Or another location where you keep your programs if you know what you're doing.)
````

Run `jj -h` to verify the installation.
It should print a list of available commands.
If the output is something like `bash: jj: command not found...`, the installation was not successful.

## Initial configuration

Jujutsu is very configurable, but we don't care about most knobs and dials right now.
The only thing that you **must** configure is your name and email.
This is required metadata and some things won't work right without this information.
However, you don't have to enter your _real_ name and email, in case you're not comfortable storing that information in the repositories you're planning to work on.

If you're working on school or work projects, it's probably fine to configure your real name and school / work email.
These repositories are usually not publicly accessible.

If you're planning to work on open source projects that anyone can see, you may want to be more careful.
You could use your GitHub handle as username, but many are comfortable using their real name too.
The email address is more important.
If you use your normal, private email address, there is a risk of receiving undesirable emails at that address.
You might consider using a dedicated address just for open source work.
Another alternative is to use an address provided by GitHub.
It identifies your GitHub account, but you cannot receive emails through it.
Go to [GitHub's email settings](https://github.com/settings/emails) and select "Keep my email address private", your private email address will then be shown at the top.

Here are the commands to configure your username and email:

```sh
jj config set --user user.name "Anonymous"
jj config set --user user.email "anon@local"
```

If you want shell completions, follow the instructions [here](https://jj-vcs.github.io/jj/latest/install-and-setup/#command-line-completion).
If you don't know what a "shell completion" is, don't worry, it's not important.
