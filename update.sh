#/bin/bash

tmpdir=`mktemp -d`

bundle exec jekyll build -d $tmpdir

git checkout master

rm -rf $(find . -mindepth 1 -maxdepth 1 -not -name ".git")

cp -r $tmpdir/* ./

git add .
git commit -m "Update site"
