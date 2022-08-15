#!/usr/bin/env sh
rm -rf build
mkdir -p build/fortunes

for f in fortunes/unix/rot13/*;
do
    caesar 13 < "$f" > build/fortunes/rot13-"$(basename "$f")"
done

for f in fortunes/plan9/*;
do
    python3 src/plan9-to-unix.py "$f" > build/fortunes/plan9-"$(basename "$f")"
done

for f in $(find fortunes/unix -type f -not -empty);
do
    grep -v "^%%" "$f" > build/fortunes/"$(basename "$f")"
done

cat build/fortunes/* > build/all
