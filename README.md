Configure git

git config --global user.name "Your Name"
git config --global user.email you@example.com


Create a new repository on the command line

touch README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/DeanSinaean/vimdev.git
git push -u origin master

Push an existing repository from the command line

git remote add origin https://github.com/DeanSinaean/vimdev.git
git push -u origin master


