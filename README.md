# fortune
Scripts to manage a collection of fortune files.

At least three different formats for fortune files exist:
1. Plan 9 style: one fortune per line, no other separator
2. Unix style: fortunes can span multiple lines, separated by ``%``
3. same as 2, but transformed with ``rot13`` (for offensive fortunes)

The goal is to convert them into the second format for usage.

### Requirements
- fortune-mod or a compatible implementation (most likely available from your repos)
- wget (optional)
- python3
- caesar (from bsd-games)


## 0. download fortune files
Download the fortune files you want to use, and place them in the appropriate subdirectories of ``fortunes``. ``src/download`` contains scripts to download a few collections.

## 1. convert files
This step converts all fortune files to the Unix style and combines them as ``build/all``.
```
./src/convert.sh
```

## 2. remove multi line fortunes (optional)
Running ``./src/filter-one-line.py build/all`` will only keep fortunes that consist of a single line.

## 3. remove duplicates
Run ``./src/unique.py build/all`` to remove duplicate fortunes.

## 4. generate .dat file
Run ``strfile build/all``

## 5. install
Optionally edit src/fortune.sh, then run:
```
mkdir -p ~/.config/fortune.sh
cp build/all* ~/.config/fortune.sh
cp src/fortune.sh ~/.local/bin
```

## 6. use fortune.sh
Run ``fortune.sh`` to print a colorized fortune that fits in your terminal.
