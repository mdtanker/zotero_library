# zotero_library
Storage for files (pdfs mostly) associated with my Zotero library

I followed the instructions [here](https://ikashnitsky.github.io/2019/zotero/) and [here](https://guides.lib.berkeley.edu/c.php?g=4472&p=6647803) to set up Zotero with the Zotlib extension. This setup allows Zotero to manage the syncing of metadata, while letting the user control the syncing of the files themselves (here with GitHub).

This enables using Zotero on multiple computers and syncing the files with Git. For example, if I add a reference and PDF to Zotero on my laptop, I can `git push` the file to GitHub, then on my desktop `git pull` to get the PDF. Zotero itself handles syncing the metadata, as well as highlights, comments, and notes within the PDFs.

I've also included a bash script in the repo (from [here](https://forums.zotero.org/discussion/72835/using-git-in-combination-with-zotero-for-version-control-and-collaboration)) which checks whether Zotero is closed, then performs a git add, commit, and push of the local repo.

# Instructions

## Add references and pdf's through Zotero Connect

Use the Zotero Connect extension on web-browsers (firefox) to save pdfs and references to Zotero. Simply click the extension button when on the webpage for an article and it will download and place it in Zotero for you, extracting the metadata (like author, year, journal). Zotfile will automatically place the pdf in the `file` folder of this Git repo, in a subfolder of the authors last name, and rename the file in the format: `lastname_year_title`.

## Add reference manually

You can also download the file and drag it into Zotero. Right-click the file and select Manage Attachements -> Rename and Move.

This also applies to adding supplementary files to an existing Zotero reference.

You can also highlight the entire library to `Rename and Move` everything at once.

## Update / data metadata

If Zotero doesn't automatically extract the metadata (typical for older references), you can add it yourself, just make sure to follow the above instructions to rename and move the file.

## Delete a file / reference

Since files are now stored outside of the Zotero directory, deleting a reference in Zotero won't delete the actual file. To do this, right-click the reference -> Show File, then delete the file there.

## Sync to Git

Close Zotero, and in bash (or GitBash) navigate to this directory and run

```
. git_push.sh
```

This will push all changes or additional files to GitHub, with the date as the commit message.
