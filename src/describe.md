# Describing changes

You may have noticed that Jujutsu likes to remind you if you haven't given your commits a description yet (also known as a "commit message").
Commit messages are important, because they make it easier for you and others to understand the changes and their motivation later on.
This importance lies on a spectrum:
The more people work on a project and the longer-lived it is, the more important good commit messages become.
For example, the Linux kernel is a multi-decade project with thousands of people working on it together.
Linux developers put a lot of thought and effort into good commit messages.
On the other extreme of the spectrum may be a student's repository for storing the homework of a single lecture.
The project is over within a couple of months and there is little chance of the student ever digging into the history, let alone anyone else.
That student probably won't invest much time into good commit messages.
If in doubt, err on the side of good commit messages!

You can change the description of the working copy by running `jj describe`.
This command will open a text editor - which one depends on your system.
(Your EDITOR environment variable will be respected.)
If you would like to use a specific editor, you can configure Jujutsu to do so.
Let's assume you want to use [Visual Studio Code](https://code.visualstudio.com/), here's how you do it:

```sh
jj config set --user ui.editor "code --wait"
```

Here's an example description you could use:

```
Add readme with project title

It's common practice for software projects to include a file called
README.md in the root directory of their source code repository. As the
file extension indicates, the content is usually written in markdown,
where the title of the document is written on the first line with a
prefixed `#` symbol.

JJ: This commit contains the following changes:
JJ:     A README.md
JJ:
JJ: Lines starting with "JJ:" (like this one) will be removed.
```

There is a little bit of structure here that you should follow.
The first line of the description is called the **subject**.
Sometimes the subject line is all you need, but to describe your changes in more detail, you can follow it up with a **body**.
Subject and body are **separated by an empty line**.
Both of them should **not exceed 72 characters** per line.

If you're working on a project with other people, your collaborators might have additional expectations about the content and structure of commit descriptions.
Make sure to adhere to existing conventions, consistency is key.

```admonish info title="More tips for good commit messages" collapsible=true
Here are some additional conventions that are good practice for any type of project.

**Try to keep the subject line below 50 characters**\
While 72 characters is the hard limit, the subject line usually benefits from being as concise as possible.
It is shown in many places where space is scarce and people want to get a general idea of your changes without reading too much.
If you find yourself exceeding 50 characters regularly, you may be combining multiple unrelated changes into a single commit.
If you put unrelated changes separated commits, finding concise subject lines becomes easier.
However, there are definitely situations where 50 characters is just too restrictive, so don't worry about going above when necessary.

**Use imperative mood in the subject line**\
A common instinct when writing commit messages it to describe what you did in the **past tense**, e.g. "Fixed bugs and improved code".
Another one is to describe the **content** of the commit, e.g. "bug fixes and code improvements".
Instead, write the subject line as if **giving a command or instruction**, e.g. "Fix bugs and improve code".
A simple rule of thumb is that the subject should complete the sentence "If applied, this commit will...".
The resulting history will be more natural to read.
Note that this primarily applies to the subject, the style of the body can be more flexible.

**Put yourself in the shoes of the reader**\
The target audience for your commit messages are future readers of the project history.
They are trying to understand **what** your changes did and **why**.
They can always read the content changes directly for **how** they did that, so the ideal commit message should complement that.
Great candidates include information that's not present in the content itself as well as guidance to understand the changes more quickly.
```
