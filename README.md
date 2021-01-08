## INTRO - readme
This README can't get of of sync with the issued commands, hence all outputs are put directly its sorce code.
The output of the commands, in this schowcase are is 100% genuin from the command issued at the bash prompt.
Therfore the README.md of this project is automatically update at every step in the process ans there are a quit a few.

### Next Steps
1. make the commands visible without manualy editing the results
1. inline exec of bash commands witout extra shell scripting
1. better use of markown syntax
1. CSS styles for an even more appealing look and feel
1. auto glossar for all used commands
1. auto index for all used commands
1. *spell correction*
1. ebedding cmd execution in markdonw style
1. PDF export
1. hugo integration
1. Support for terminalizer
1. embeding of issu tracking

### Out Of The Box
This is what it looks like on GitHub if you upload the ```README.md``` that is created out if the box. ![showcase: foure paragraphs with generic title and two time stamps](https://raw.githubusercontent.com/westenfalke/mk-tut/master/README.png "This is what it looks like out if the box")

### Inline execution of commands.
```bash
/usr/bin/echo HALLO WELT! `/usr/bin/date --iso-8601=second`
```
HALLO WELT! 2021-01-08T07:11:41+01:00
where the date is update every time this chaper is build via GNU make.
## OUTRO - readme
Weiter geht es mit dem listing der automatisch erzeugen templates, Makefiles und shell srcipte.
## INTRO - index
### Automatic  README
This README.md and its docomenaion is created
by using GNU make and bash.

This are the files wichch are generate during
the istallation in the base folder
by just one call of make

 $ make

The neu image REANME.png was automatocally liste correctly 
as well as the changes in the naming convention of the Makefiles
and showcase file that where made on 2020-01-08 over the day.
ACTION - HALLO WELT! 2021-01-08T07:11:41+01:00
```bash
# cd ..
# pwd
/home/westenfalke/GNU-Make/mk-tut
# tree
.
├── Makefile
├── README.md
├── README.png
├── index
│   ├── 01-showcase-intro.md
│   ├── 02-showcase-action.bash
│   ├── 03-showcase-outro.md
│   ├── Makefile
│   └── README.md
├── index.mk
├── mk-install
├── readme
│   ├── 01-showcase-intro.md
│   ├── 02-showcase-action.bash
│   ├── 03-showcase-outro.md
│   ├── Makefile
│   └── README.md
└── readme.mk

2 directories, 16 files
```
The content of the file `01-showcase-intro.md`.
```bash
# cd -
/home/westenfalke/GNU-Make/mk-tut/index
# cat 01-showcase-intro.md
## INTRO - index
### Automatic  README
This README.md and its docomenaion is created
by using GNU make and bash.

This are the files wichch are generate during
the istallation in the base folder
by just one call of make

 $ make

The neu image REANME.png was automatocally liste correctly 
as well as the changes in the naming convention of the Makefiles
and showcase file that where made on 2020-01-08 over the day.
```
## OUTRO - index
This is alredy the end of this showcase.

Thank You for playing along so far.

Yours, Stefan
 