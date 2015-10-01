### How does tracking and adding changes make developers' lives easier?

Tracking makes lives easier becuase there is a master file connected to many branches. Through the branches, we can track the changes made to a file, and this allows for developers to track changes, and subsequently find mistakes, easier. If mistakes are made, the master file is not ruined and can be fixed. This is essential when working on a collaborative project, wherein many people are working on the same files and may not be aware of what or why changes are being made.

### What is a commit?

A commit is the submission of a set of changes that are tracked through version control.

### What are the best practices for commit messages?

Explain what the changes are, and why they were made. Always use the imperative tense. Common courtesy to leave detailed commit messages, can include both a header and a body.

### What does the HEAD^ argument mean?

You use HEAD^ when you want to change files that you have already committed. HEAD is the current commit, HEAD^ is the previous commit

### What are the 3 stages of a git change and how do you move a file from one stage to the other?

git status checks the status of the current git branch, and whether or not there are any changes to be made

git add adds the current file to the list of things to be committed. This makes the file ready to commit

git commit commits the file to the repository and the committed files are ready to push

### Write a handy cheatsheet of the commands you need to commit your changes?

- git status
- git add
- git commit
- git status
- git log

### What is a pull request and how do you create and merge one?

- A pull request is a request on GitHub to merge the changes made in the branch to the master. To do a pull request, commit the changed files. Check to make sure that the current version of the master is up to date with git checkout master and git pull origin master to fetch the master from the repository.

- Merge the changes from the master into the feature branch. Change to feature branch with git checkout feature-branch and then type git merge master. This merges changes from the master into the feature branch.

- Push the feature-branch onto GitHub with git push origin feature-branch

- On GitHub, the pull request will appear on the repository page. Hit the button to pull the request. Make sure that this is happneing under your username and that the base is the master. Hit the Merge pull request button. Once successfully merged, the feature-branch may be deleted.

Why are pull requests preferred when working with teams?

Pull requests are good for working with teams because multiple members of a team may be working on the same file. Pull requests ensure that members can appropriately label the changes that they made so that their team members can understand and approve of the changes. This ensures that group can collaborate on the same project without worrying about overwriting each others' files or inadvertently destroying the project.