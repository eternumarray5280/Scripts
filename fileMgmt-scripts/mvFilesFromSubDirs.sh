find . -type f -exec mv -i {} . \;
find . -depth -mindepth 1 -type d -empty -delete
