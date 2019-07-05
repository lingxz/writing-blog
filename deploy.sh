rm -rf public
hugo
html-minifier --input-dir public --output-dir public --file-ext html --remove-comments --minify-css --minify-js --collapse-whitespace
cd public
git init
git remote add origin git@github.com:lingxz/writing-blog.git
git add .
git commit -m "new version $(date)"
git push origin master:gh-pages -f