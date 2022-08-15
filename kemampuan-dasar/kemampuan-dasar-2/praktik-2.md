## Membuat Organizations 
Membuat Organizations
![praktik 2 (1).png](https://www.dropbox.com/s/uor3grhsatqn18h/praktik%202%20%281%29.png?dl=0&raw=1)

Menambahkan Member
![praktik 2 (2).png](https://www.dropbox.com/s/tbum47ug17xtm7h/praktik%202%20%282%29.png?dl=0&raw=1)
![praktik 2 (3).png](https://www.dropbox.com/s/v6w8pqwqgcpjebi/praktik%202%20%283%29.png?dl=0&raw=1)

Tampilan awal home page dari Organization
![praktik 2 (4).png](https://www.dropbox.com/s/tu0gh19neff534u/praktik%202%20%284%29.png?dl=0&raw=1)

Membuat repo baru di Organization
![praktik 2 (5).png](https://www.dropbox.com/s/f36ankaug3rqgtg/praktik%202%20%285%29.png?dl=0&raw=1)

============================================================================================
## Menambahkan Team Members atau Collaboration
Akun SecondDams adalah akun ke dua saya.
![praktik 2 (6).png](https://www.dropbox.com/s/u5l6h5bdlrdk6wv/praktik%202%20%286%29.png?dl=0&raw=1)
![praktik 2 (7).png](https://www.dropbox.com/s/hz90thsazf3pwem/praktik%202%20%287%29.png?dl=0&raw=1)
![praktik 2 (8).png](https://www.dropbox.com/s/1ojw14zkj6tkbzh/praktik%202%20%288%29.png?dl=0&raw=1)

============================================================================================
## Clone dan Membuat Branch
Clone repo Organization-dan-Collab ke local dan push branch ke remote.

Repo sebelum Merge
![praktik 2 (9).png](https://www.dropbox.com/s/i213ewgcn2sqoo0/praktik%202%20%289%29.png?dl=0&raw=1)

Terminal Git
~~~
user@LAPTOP-Dams MINGW64 /d/PGT/adams099
$ git clone https://github.com/Organization-dan-Collab/Organization-dan-Collab.git
Cloning into 'Organization-dan-Collab'...
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 0), reused 1 (delta 0), pack-reused 0
Receiving objects: 100% (6/6), done.

user@LAPTOP-Dams MINGW64 /d/PGT/adams099
$ cd Organization-dan-Collab

user@LAPTOP-Dams MINGW64 /d/PGT/adams099/Organization-dan-Collab (main)
$ git checkout -b readme
Switched to a new branch 'readme'

user@LAPTOP-Dams MINGW64 /d/PGT/adams099/Organization-dan-Collab (readme)
$ git add .

user@LAPTOP-Dams MINGW64 /d/PGT/adams099/Organization-dan-Collab (readme)
$ git commit -m "edit -1 readme"
[readme e1ec709] edit -1 readme
 1 file changed, 2 insertions(+)

user@LAPTOP-Dams MINGW64 /d/PGT/adams099/Organization-dan-Collab (readme)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

user@LAPTOP-Dams MINGW64 /d/PGT/adams099/Organization-dan-Collab (main)
$ git push origin readme
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 284 bytes | 142.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'readme' on GitHub by visiting:
remote:      https://github.com/Organization-dan-Collab/Organization-dan-Collab/
pull/new/readme
remote:
To https://github.com/Organization-dan-Collab/Organization-dan-Collab.git
 * [new branch]      readme -> readme
~~~

============================================================================================
## Pull Requests
Pull requests dari branch yang dibuat dari lokal.
![praktik 2 (11).png](https://www.dropbox.com/s/k375cw0zyfobjzy/praktik%202%20%2811%29.png?dl=0&raw=1)
![praktik 2 (12).png](https://www.dropbox.com/s/d7kl33a3xjs48da/praktik%202%20%2812%29.png?dl=0&raw=1)

============================================================================================
## Merging
Merge branch readme yang dibuat di lokal ke default branch main
![praktik 2 (13).png](https://www.dropbox.com/s/e9vcmx31mhjnfp9/praktik%202%20%2813%29.png?dl=0&raw=1)
![praktik 2 (14).png](https://www.dropbox.com/s/28sjxgqe5t16g09/praktik%202%20%2814%29.png?dl=0&raw=1)

Repo setelah Merge
![praktik 2 (15).png](https://www.dropbox.com/s/1nua9seho4htvnl/praktik%202%20%2815%29.png?dl=0&raw=1)

Dan Commit setelah Merge branch readme ke default branch main (merge)
![praktik 2 (16).png](https://www.dropbox.com/s/nuj4tabd1v731ov/praktik%202%20%2816%29.png?dl=0&raw=1)