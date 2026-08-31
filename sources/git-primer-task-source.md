<!--
Source: gitinminutes.rst (docs.farowave.com/gitinminutes — "Git Primer for the Impatient")
Trimmed excerpt for DITA conversion reference — Week 2 of DITA_XML_CCMS_Practical_Familiarity_v2.md
Target DITA topic type: Task (installation, configuration, first commands)
Original doc: Sphinx/RST, ~636 lines. Trimmed to the install -> first-commit sequence.
Image refs in original (not yet converted): gitflow.svg, git-rebase.svg (CC0 1.0 Universal license)
-->

# Getting started with Git

## Installation on Linux

To install Git on Debian based distros, run the following commands:

```console
$ sudo apt-get update
$ sudo apt install git-all
```

For Red Hat based distros, use the following commands:

```console
$ sudo dnf update
$ sudo dnf install git-all
```

## Initial configuration

Git ships with a tool called `git config` that allows you to set multiple
configuration variables. These variables control how Git looks and behaves.

Once you have installed Git, you should set your credentials by indicating
your user name and email:

```console
$ git config --global user.name "Random User"
$ git config --global user.email randomuser@test.com
```

To check all your personal settings, type the following command:

```console
$ git config --list
```

## Initializing a new repository

If you already have a project, navigate to the relevant folder, then
initialize an empty repository with the command:

```console
$ git init
```

## Cloning an existing repository

To clone an existing repository, type the command:

```console
$ git clone <URL>
```

## Adding files

Git will not begin tracking your files unless you add them. To add all
the files in your directory to Git, type the command:

```console
$ git add -A
```

To add a single file called 'foo', type the command:

```console
$ git add foo
```

## Committing changes

To commit your changes with a message, type the command:

```console
$ git commit -m "Initial commit for Git's documentation project"
```

Note: if you do not insert a commit message at the time of committing your
files (i.e. if you only type `git commit`), Git will launch the default
text editor set in your environment variables.
