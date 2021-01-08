## INTRO - readme
This README can't get of of sync with the issued commands, hence all outputs are put directly its sorce code.
The output of the commands, in this schowcase are is 100% genuin from the command issued at the bash prompt.
Therfore the README.md of this project is automatically update at every step in the process ans there are a quit a few.

### Next Steps
1. make the commands visible without manualy editing the results
1. inline exec of bash commands witout extra shell scripting
1. auto index for all uses commands
1. auto glossar for all uses commands
1. ebedding cmd execution in markdonw style

### Inline execution of commands.
```vim
/usr/bin/echo HALLO WELT! `/usr/bin/date --iso-8601=second`
```
HALLO WELT! 2021-01-08T05:56:30+01:00
where the date is update every time this chaper is build via GNU make.
## OUTRO - readme
description
## INTRO - index
### Automatic  README
This and the README.md and ist docimantation is created
by usin make using GNU make an bash.

This are the files wichch are generate during
the istallation in the base folder
by just one call of make

 $ make

ACTION - HALLO WELT! 2021-01-08T05:56:30+01:00
```vim
# cd ..
# pwd
/home/westenfalke/GNU-Make/mk-tut
# tree
.
├── Makefile
├── README.md
├── foo
├── index
│   ├── 01-showcase-outro.md
│   ├── 02-showcase-action.bash
│   ├── 03-showcase-outro.md
│   ├── Makefile
│   └── README.md
├── index.mk
├── mk-install
├── readme
│   ├── 01-showcase-outro.md
│   ├── 02-showcase-action.bash
│   ├── 03-showcase-outro.md
│   ├── Makefile
│   ├── README.md
│   └── README.png
└── readme.mk

2 directories, 17 files
```
The content of the file `01-showcase-outro.md`.
```vim
# cd -
/home/westenfalke/GNU-Make/mk-tut/index
# cat 01-showcase-outro.md
## INTRO - index
### Automatic  README
This and the README.md and ist docimantation is created
by usin make using GNU make an bash.

This are the files wichch are generate during
the istallation in the base folder
by just one call of make

 $ make

```
## OUTRO - index
This is alredy the end of this showcase.

Thank You for playing along so far.

Yours, Stefan
 