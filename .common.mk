# VAR
ABS_PROJECT_DIR         = /tmp
CHAPTERS                = readme 
ABS_PROJECT_DIR         = /tmp
APPENDIX                = index
FILE_SHOWCASE_PART_01   = 01-showcase-outro.md
FILE_SHOWCASE_PART_02   = 02-showcase-action.bash
FILE_SHOWCASE_PART_03   = 03-showcase-outro.md
RECIPE_SHOWCASE_PART_01 = $(CAT)    $(FILE_SHOWCASE_PART_01) $(PIPE-TEE-A-TO-TARGET) $(REL_PROJECT_DIR)/$(OUTPUT_FILE)
RECIPE_SHOWCASE_PART_02 = -$(BASH)  $(FILE_SHOWCASE_PART_02) $(PIPE-TEE-A-TO-TARGET) $(REL_PROJECT_DIR)/$(OUTPUT_FILE)
RECIPE_SHOWCASE_PART_03 = $(CAT)    $(FILE_SHOWCASE_PART_03) $(PIPE-TEE-A-TO-TARGET) $(REL_PROJECT_DIR)/$(OUTPUT_FILE)
RECIPE_SHOWCASE_CLEAN   = $(RM-RFV)                                                  $(REL_PROJECT_DIR)/$(OUTPUT_FILE)
OUTPUT_DIR              = out
OUTPUT_FILE             = README.md
PHONY_TARGETS           = .phony-targets.mk
UPDATE_MAKEFILE         = .update-makefiles.mk
HELP_TARGET             = .help-target.mk
DEFAULT_TARGET          = .default-target.mk
# CMD
BASH                    = /usr/bin/bash
CAT                     = /usr/bin/cat
ECHO                    = /usr/bin/echo
ECHO-N                  = /usr/bin/echo -n
HASH-BANG               = #!/usr/bin/bash
LS                      = /usr/bin/ls
MKDIR-P                 = /usr/bin/mkdir -p
MOVE--VERBOSE           = /usr/bin/mv --verbose
MOVE--VERBOSE--BACKUP-N = /usr/bin/mv --verbose --backup=numbered
PWD                     = /usr/bin/pwd
READLINK-F              = /usr/bin/readlink -f
RM-RF                   = /usr/bin/rm -rf
RM-RFI                  = /usr/bin/rm -rfi
RM-RFV                  = /usr/bin/rm -rfv
TEE                     = /usr/bin/tee
TEE-A                   = /usr/bin/tee -a
TOUCH                   = /usr/bin/touch
TOUPPER                 = /usr/bin/tr '[:lower:]' '[:upper:]'
TOLOWER                 = /usr/bin/tr '[:upper:]' '[:lower:]'
TR                      = /usr/bin/tr
TRUNCATE-ZERO-CREATE    = /usr/bin/truncate --size=0
# MACRO                 
PIPE-TEE-A-TO-TARGET    = | /usr/bin/tee -a $@
DATE-ISO-SEC            = `/usr/bin/date --iso-8601=second`
DATE-ISO-NANOSEC        = `/usr/bin/date --iso-8601=ns`
