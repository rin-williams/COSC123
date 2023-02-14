# Task 2 - Practice Terminal Commands

For this task, you will be reproducing a particular directory structure with a series of files and folders, similar to what we did in class.

## 2.1 - Create Directory Structure

The files should be named the same way, but you can leave them empty if you want.

<img src="../images/dir.png" width="350px">

*Hint: Start by creating a directory called `Task2` in your activity directory, using the command:*

```
mkdir Task2
```

If you followed the suggested directory structure, this directory should be here: `~/school/year1/cosc123/lab01-demoFiras/activity/Task2/`

You may need the following commands:

- [`cd`](https://man7.org/linux/man-pages/man1/cd.1p.html) : change directory
- [`pwd`](https://man7.org/linux/man-pages/man1/pwd.1.html) : print working directory
- [`mkdir`](https://man7.org/linux/man-pages/man1/mkdir.1.html): make directory (note the `-p` option)
- [`ls`](https://man7.org/linux/man-pages/man1/ls.1.html): list directory contents
- [`touch`](https://man7.org/linux/man-pages/man1/touch.1.html): create an empty file with a specific name
- `code`: edit the file in a text editor

## 1.2 - Add, commit, and push your changes to GitHub

You are encouraged to commit, add and push intermediate changes in your repository, just remember to add a useful commit message.

```
git add .
git commit -m "Finished creating the directory structure."
git push
```

**Note: Empty directories will not show up on GitHub.com so each directory must have a file in it (even if it is empty).**

You are now ready to move on to the labs!