#!/usr/bin/env bash

for file in slides/**/*.html; do
  slide_name=`echo $file | sed -n -e 's/^slides\/\(.*\)\/index.html/\1/p'`
  `npm bin`/decktape automatic http://localhost:8000/$file $slide_name.pdf
done
