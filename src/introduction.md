# Introduction

This is a tutorial for [Jujutsu](https://github.com/jj-vcs/jj) that requires **no previous experience with Git** or any version control system for that matter.

At the time of writing, most Jujutsu tutorials are targeted at experienced Git users, teaching them how to transfer their existing Git skills over to Jujutsu. This blog post is my attempt to fill the void of beginner learning material for Jujutsu.

While no prior experience with version control is required, I do assume you know the basics of the terminal.
I will often suggest you run commands to modify files, which only work on Unix-like operating systems like Linux and Mac.
If you're using Windows, you could use WSL or do the file modifications manually.

## How to read this book

The book is split into **levels**, which are indicated in the sidebar.
The idea is that once you complete a level, you should probably put this book away and gain some practical experience, before coming back to learn more.
Here's an overview of the levels:

| level | description |
| :-: | --- |
| **0** | The bare minimum to get started. This is enough for the simplest use cases. Stopping here and not coming back for level 1 is very limiting long-term. |
| **1** | A little more advanced, but still essential. Once you are comfortable with what you learn here, you will probably use it all the time. It's recommended to come back here once your mind has recovered from level 0. |
| **2** | 🚧 under construction 🚧 |

<!-- level X: actually learn some Git for stuff Jujutsu can't do yet -->

If you find a typo, you can suggest a fix directly by clicking on the "edit" icon in the top-right corner.
If you have general suggestions for improvement, please [open an issue](https://github.com/senekor/jj-for-everyone/issues/new).

## What is version control and why should you use it?

I will assume you're using version control for software development, but it can be used for other things as well.
For example, authoring professionally formatted documents with tools like [typst](https://typst.app/).
The source of this website is stored in version control too!

What these scenarios have in common is that a large body of work (mostly in the form of text) is slowly being expanded and improved over time.
You don't want to lose any of it and you want to be able to go back to previous states of your work.
Often, several people need to work on the project at the same time.

A general-purpose backup solution can keep a few copies of your files around.
A graphical document editor can allow multiple people to edit the text simultaneously.
But sometimes, you need a sharper knife.
Version control is the sharpest knife you can find.

## Why Jujutsu instead of Git?

Git is by far the most commonly used VCS in the software development industry.
So why not use that?
Using the most popular thing has undeniable benefits.
There is lots of learning material, lots of people can help you with problems, lots of other tools integrate with it etc.
Why make life harder on yourself by using a lesser-known alternative?

Here's my elevator pitch:
- **Jujutsu is compatible with Git.**
  You're not actually losing _anything_ by using Jujutsu.
  You can work with it on any existing project that uses Git for version control without issues.

- **Jujutsu is easier to learn than Git.**
  (That is, assuming I did a decent job writing this tutorial.)
  Git is known for its complicated, unintuitive user interface.
  Jujutsu gives you all the functionality of Git with a lot less complexity.
  Experienced users of Git usually don't care about this, because they've paid the price of learning Git already.
  (I was one of these people once.)
  But you care!

- **Jujutsu is more powerful than Git.**
  Despite the fact that it's easier to learn and more intuitive, it actually has loads of awesome capabilities for power users that completely leave Git in the dust.
  Don't worry, you don't have to use that power right away.
  But you can be confident that if your VCS-workflows become more demanding in the future, Jujutsu will have your back.
  This is not a watered-down "we have Git at home" for slow learners!

Learning Jujutsu instead of Git as your first VCS does have some downsides:

- When talking about version control with peers, they will likely use Git-centric vocabulary.
  Jujutsu shares a lot of Git's concepts, but there are also differences.
  Translating between the two in conversation can add some mental overhead.
  (solution: convince your peers to use Jujutsu 😉)

- Jujutsu is relatively new and doesn't cover 100% of the features of Git yet.
  When you do run into the rare problem where Jujutsu doesn't have an answer, you can always fall back to use Git directly.
  Still, having to switch to a different tool is slightly annoying.
  I actually plan to include learning these Git features in this book at a higher level.
  The book should be a one-stop-shop for all Jujutsu users.

- The command line interface of Jujutsu is not yet stable.
  That means in future versions of Jujutsu, some commands might work a little differently or be renamed.
  I personally don't think this should scare you away.
  Many people including me have used Jujutsu as a daily driver for a long time.
  Whenever something _did_ change, my reaction was usually:
  "Great, that was one of the less-than-perfect parts of Jujutsu! Now it's even more intuitive than before!"
  You can subscribe to release announcements on the [GitHub repo](https://github.com/jj-vcs/jj) (watch > custom > releases).
  You will get a monthly email with the release notes, including any breaking changes.

Despite some downsides, I think the benefits are **well worth it**.
