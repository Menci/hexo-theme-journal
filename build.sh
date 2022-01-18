node-sass src/scss/journal.scss --output-style compressed -o source/css
node-sass src/scss/giscus.scss --output-style compressed -o source/css

postcss source/css/journal.css -u autoprefixer -r --no-map
postcss source/css/giscus.css -u autoprefixer -r --no-map

swc -q source/js/journal.js | terser --compress --mangle --toplevel > src/js/journal.min.js
