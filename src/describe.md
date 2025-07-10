# Describing changes

You may have noticed that Jujutsu likes to remind you if you haven't given your commits a description yet.
Descriptions are important, because giving commits good descriptions makes it easier for you and others to understand the motivation behind a change later on.
This importance lies on a spectrum:
The more people work on a project and the longer-lived it is, the more important good commit descriptions become.
For example, the Linux kernel is a multi-decade project with thousands of people working on it together.
Linux developers put a lot of thought and effort into good commit descriptions.
On the other side of the spectrum may be a student's repository for storing the homework of a single lecture.
The project is over within a couple months and there is little chance of the student ever digging into the history, let alone anyone else.
That student probably won't waste time thinking about good commit descriptions.
If in doubt, err on the side of good descriptions!

You can change the description of the working copy by running\
`jj describe`.
This command will open a text editor - which one depends on your environment.
(Your EDITOR environment variable will be respected.)
If you would like to use a specific editor, you can configure Jujutsu to do so.
Let's say you would like to use [Visual Studio Code](https://code.visualstudio.com/), here's how you do it:

```sh
jj config set --user ui.editor "code --wait"
```

Here's an example description you could give the commit:

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

There is a little bit of structure here that you should respect.
The first line of the description is called the **subject**.
It should be **no longer than 50 characters**.
Making it too long can cause some of Jujutsu's command outputs hard to read.
After the subject, there is an optional **body** where you can describe your changes in much more detail.
The body is always separated from the subject by **one empty line**.
Lastly, the body should **not exceed 72 characters** per line.
If you don't obey these rules, the world won't descend into chaos, but you might make some people sad.

If you're working on a version-controlled project with other people, these people might have additional expectations about the content and structure of commit descriptions.
Make sure to "read the room" and adhere to the conventions of the project.

