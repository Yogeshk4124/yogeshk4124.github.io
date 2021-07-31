#!/usr/bin/env sh

# abort on errors
set -e

# build
flutter build web --no-sound-null-safety --release

# navigate into the build output directory
cd build
cd web

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
# git commit -m 'test-run'
git commit -m '🚀 deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/Yogeshk4124/portfolio.git main:gh-pages

cd - 