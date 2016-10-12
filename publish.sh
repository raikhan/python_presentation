#!/bin/bash

jupyter-nbconvert --to slides slides.ipynb --reveal-prefix=reveal.js
mv slides.slides.html index.html

git checkout -B gh-pages

git add index.html
git add slides.ipynb

git commit -m "Update"

git push origin gh-pages

