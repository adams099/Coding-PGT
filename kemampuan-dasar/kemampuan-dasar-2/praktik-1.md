##### Menjadikan suatu file ke Repository
~~~
user@LAPTOP-Dams MINGW64 /d/Coding-PGT
$ git init
Initialized empty Git repository in D:/Coding-PGT/.git/

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        kemampuan-dasar/

nothing added to commit but untracked files present (use "git add" to track)

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git add .

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   kemampuan-dasar/kemampuan-dasar-1/latihan/cmdline.txt


user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git commit -m "membuat repo"
[master (root-commit) 101bf8d] membuat repo
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 kemampuan-dasar/kemampuan-dasar-1/latihan/cmdline.txt
~~~

##### Remote Push dari lokal ke github
Saya tidak Cloning Repo yang ada di github ke lokal karna sebagian besar filenya berada di lokal.
~~~
user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git remote add origin https://github.com/adams099/Coding-PGT.git

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (master)
$ git branch -M main

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ git remote -v
origin  https://github.com/adams099/Coding-PGT.git (fetch)
origin  https://github.com/adams099/Coding-PGT.git (push)

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ git status
On branch main
nothing to commit, working tree clean

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ graph
bash: graph: command not found

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ alias graph="git log --all --decorate --oneline --graph"

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ graph
* 101bf8d (HEAD -> main) membuat repo

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ git push
fatal: The current branch main has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin main

To have this happen automatically for branches without a tracking
upstream, see 'push.autoSetupRemote' in 'git help config'.


user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ git push --set-upstream origin main
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Writing objects: 100% (6/6), 362 bytes | 120.00 KiB/s, done.
Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/adams099/Coding-PGT.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ graph
* 101bf8d (HEAD -> main, origin/main) membuat repo

user@LAPTOP-Dams MINGW64 /d/Coding-PGT (main)
$ git push
Everything up-to-date
~~~