<!--
Source: gitinminutes.rst (docs.farowave.com/gitinminutes — "Git Primer for the Impatient")
Constructed reference excerpt for DITA conversion — Week 2 of DITA_XML_CCMS_Practical_Familiarity_v2.md
Target DITA topic type: Reference (structured lookup table — DITA reference topics use
<refbody>/<properties>/<proptable> rather than prose, so this is built as a table rather
than copied prose from the original, unlike the task excerpt.)
-->

# Git essential commands — quick reference

| Command | Purpose |
|---|---|
| `git init` | Initialize an empty repository in the current folder |
| `git clone <URL>` | Clone an existing remote repository locally |
| `git add -A` / `git add .` | Stage all changed files for commit |
| `git add <file>` | Stage a single file for commit |
| `git commit -m "<message>"` | Commit staged changes with a message |
| `git status` | Show the state of tracked/untracked/modified files |
| `git status -s` | Short-form status output |
| `git diff` | Compare local working directory against the last commit |
| `git log` | View commit history, newest first |
| `git log --oneline` | Compact commit history (ID + first line of message) |
| `git remote set-url origin <URL>` | Change the remote repository URL |
| `git remote prune origin` | Remove references to deleted remote branches |
| `git fetch upstream` | Fetch changes from an upstream repo without merging |
| `git rebase <branch>` | Reapply commits on top of another base branch |
| `git rebase -i HEAD~n` | Interactive rebase — squash/reword/drop recent commits |
| `git cherry-pick <commit>` | Re-apply a specific commit onto the current branch |
| `git reflog` | Show a log of where branch tips have pointed (recovery aid) |
| `git reset --hard <SHA>` | Reset the repo to a specific previous commit |
| `git push <remote> <branch> --force-with-lease` | Force-push safely — fails if others have pushed new commits |

Git states referenced throughout: **Modified** (working directory changes) →
**Staged** (snapshotted in the staging area) → **Committed** (saved to the
Git directory, `.git`).
