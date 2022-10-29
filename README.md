# zotero_library
Storage for files (pdfs mostly) associated with my Zotero library

I followed the instructions [here](https://ikashnitsky.github.io/2019/zotero/) and [here](https://guides.lib.berkeley.edu/c.php?g=4472&p=6647803) to setup Zotero with Zotlib. This setup allows Zotero to manage the syncing of metadata, while letting the user control the syning of the files themselves (here with GitHub).

Now I can use Zotero on multiple computers and sync my pdfs (and notes/comments within them) with git commands. 

I've also included a bash script in the repo (from [here](https://forums.zotero.org/discussion/72835/using-git-in-combination-with-zotero-for-version-control-and-collaboration)) which checks whether Zotero is closed, then performs a git add, commit, and push of the local repo.
