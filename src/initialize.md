# Initializing a repository

A "repository" is a directory (folder) where Jujutsu keeps track of all files, including the ones in subdirectories.
A repository usually corresponds to a project, so the version history of unrelated projects are not tied to each other.
To create a repository, make a new folder on your file system.
I will assume you use `~/jj-tutorial`, but you can use any location you like.
`cd` into that directory and run `jj git init --colocate`.

In summary:

```sh
mkdir ~/jj-tutorial
cd ~/jj-tutorial
jj git init --colocate
```

Let's examine our first `jj` command.
`git` is the subcommand responsible for various Git-specific compatibility features.
One of them is the `init` command, which initializes a new repository that's compatible with Git.
I highly recommend always using the `--colocate` flag.
It allows third-party tools with Git-integration to work seamlessly.

What does "initializing a repository" mean?
Essentially, jj creates two directories `.git` and `.jj`.
These contain all information about the version history.
Why two directories?
The `.git` directory contains all the important stuff, stored in a way that is compatible with Git.
The `.jj` directory contains additional metadata which enable some of Jujutsu's advanced features.

**WARNING!** You should never manipulate files in these directories directly!
Their content is a well-structured database.
If you corrupt the database format, you might completely brick the repository.
We'll talk about a second layer of backup later.

Files and directories staring with a dot are hidden by default, but you can verify they were created with `ls -a`:

```
$ ls -a
.git  .jj
```
