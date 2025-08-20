# Initializing a repository

A "repository" is a directory (folder) where Jujutsu keeps track of all files, including the ones in subdirectories.
A repository usually corresponds to a project, so the version history of unrelated projects are not tied to each other.
To create a repository, make a new folder on your filesystem.
For this tutorial, you should use `~/jj-tutorial/repo`.
Otherwise, some commands I tell you to run later won't work.
(If you don't like the clutter in your home directory, you can always delete it and use the [restore script](./introduction#restoring-your-progress) when you continue with the tutorial.)
In that directory, run `jj git init --colocate` to initialize a new repository.

As commands to copy-paste:

```sh
mkdir -p ~/jj-tutorial/repo
cd ~/jj-tutorial/repo
jj git init --colocate
```

Let's examine our first `jj` command.
`git` is the subcommand responsible for various Git-specific compatibility features.
One of them is the `init` command, which initializes a new repository that's compatible with Git.
I won't explain the `--colocate` flag, because the details are irrelevant and it's behavior will become the default anyway the near future.
Just use the flag for now.
You'll likely be able to omit it starting in version `0.34` at the beginning of October.

What does "initializing a repository" mean?
Essentially, Jujutsu creates two directories `.git` and `.jj`.
These contain all information about the version history.
Why two directories?
The `.git` directory contains all the important stuff, stored in a way that is compatible with Git.
The `.jj` directory contains additional metadata which enable some of Jujutsu's advanced features.

```admonish warning
You should never manipulate files in these directories directly!
Their content is a well-structured database.
If you corrupt the database format, you might completely brick the repository.
We'll talk about a second layer of backup in the [chapter about remotes](./remotes.md).
```

Files and directories starting with a dot are hidden by default, but you can verify they were created with `ls -a`:

```console
$ ls -a
.git  .jj
```

In the previous chapter, you configured Jujutsu with your name and email address.
This configuration applies to all of your repositories by default.
However, for our example repository, we'll actually pretend to be "Alice", who is later joined by "Bob" to simulate collaboration.
The below commands perform the author configuration only for this specific repo.
There's no need to memorize these commands, they are normally not needed.

```sh
# applies configuration to a single repository only
#             vvvvvv
jj config set --repo user.name "Alice"
jj config set --repo user.email "alice@local"

# reset already recorded global authorship information:
jj describe --reset-author --no-edit
```
