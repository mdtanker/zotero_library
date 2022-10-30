# zotero_library
Storage for files (pdfs mostly) associated with my Zotero library

I followed the instructions [here](https://ikashnitsky.github.io/2019/zotero/) and [here](https://guides.lib.berkeley.edu/c.php?g=4472&p=6647803) to setup Zotero with Zotlib. This setup allows Zotero to manage the syncing of metadata, while letting the user control the syncing of the files themselves (here with GitHub).

Now I can use Zotero on multiple computers and sync my pdfs (and notes/comments within them) with git commands.

I've also included a bash script in the repo (from [here](https://forums.zotero.org/discussion/72835/using-git-in-combination-with-zotero-for-version-control-and-collaboration)) which checks whether Zotero is closed, then performs a git add, commit, and push of the local repo.

# Instructions:

Add references and pdf's to Zotero like normal. Typically I use the Zotero Connect extension on web-browsers to save pdfs and references to Zotero. If you download the file manually,

In Zotero, highlight the whole library, right click, -> Manaage Attachements -> Rename and Move.

This will rename all files with their metadata, and place them into author subfolder. The directory they're moved to is this git repo, so they should be automatically added to tracking.

Close Zotero, and in bash (or GitBash) navigate to this directory and run . git_push.sh

This will push all changes or additional files to GitHub, with the date as the commit message.
