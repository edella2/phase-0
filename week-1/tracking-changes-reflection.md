
# 1.5  Tracking Changes 

##### How does tracking and adding changes make developers' lives easier?
It can serve as a back-up in case soemthing happens to a file and you need to revert to a previous version.  If you made changes to a file, but decide that the methods you were using a month ago made more sense you can revert easily.  Writing clear messages for what changed in versions makes this easier to find the version you want to chagne to.

##### What is a commit?
Each change is tracked with the files we are working on.  It isn't until we submit those changes that a version is created.  The changes within a commit can be just one letter change to a whole directory of files added.

##### What are the best practices for commit messages?
From Tim Pope's style guide.  A commit should be a Capitalized, short (50 chars or less) summary.

The commit message should should be written in the imperative (Ex. "Fix bug" not "Fixed bug").


##### What does the HEAD^ argument mean?
HEAD^ is the last commit.  If you commit files and want to change them, you can use 'git reset --soft HEAD^' to select the last commit.

##### What are the 3 stages of a git change and how do you move a file from one stage to the other?
-When you first start working on or creating a file in your git folder.  Those files will be labeled as untracked files until added.
-When you type "git add 'file name'" those changes will ready too be committed.
-If you commit these changes you would type "git commit -m 'message'" or "git commit -v".


##### Write a handy cheatsheet of the commands you need to commit your changes?
`git add 'file'` - to add files to what you will commit later
`git commit -m "message"` - to commit and create a message
`git checkout -b 'branch name'` - to create and checkout a new branch
`git pull` - to pull changes remotely from GitHub and merge them.
`git push origin 'branch name'` - to push a branch to GitHub

##### What is a pull request and how do you create and merge one?
A pull request is when a branch is pushed to GitHub ready to be merged into the master.  You can then compare the new branch with the master to see what has changed before merging them.  This will help manage changes easier to make sure the master will always work.

##### Why are pull requests preferred when working with teams?
You can manage changes from multiple people easier.  You can make sure the master branch will work, by being able to check pull requests to see what has changed.