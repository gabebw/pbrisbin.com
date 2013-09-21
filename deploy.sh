#!/usr/bin/env sh
set -e

tag="v$(date +%Y%m%d%H%M)"
host='pbrisbin.com'

jekyll build

rsync -e ssh --archive _site/ "$host:/srv/http/site/"

git tag -a -m "$tag" "$tag"
