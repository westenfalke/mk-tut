# VAR
ABS_PROJECT_DIR         = /home/westenfalke/GNU-Make/CAHTFC
CHAPTERS                = readme 
APPENDIX                = index
OUTPUT_DIR              = out
OUTPUT_FILE             = README.md
PHONY_TARGETS           = .phony-targets.mk
UPDATE_MAKEFILE         = .update-makefiles.mk
HELP_TARGET             = .help-target.mk
DEFAULT_TARGET          = .default-target.mk
# CMD
CAT                     = /usr/bin/cat
ECHO                    = /usr/bin/echo
ECHO-N                  = /usr/bin/echo -n
LS                      = /usr/bin/ls
MKDIR-P                 = /usr/bin/mkdir -p
MOVE--VERBOSE           = /usr/bin/mv --verbose
MOVE--VERBOSE--BACKUP-N = /usr/bin/mv --verbose --backup=numbered
PWD                     = /usr/bin/pwd
READLINK-F              = /usr/bin/readlink -f
RM-RF                   = /usr/bin/rm -rf
RM-RFI                  = /usr/bin/rm -rfi
TEE                     = /usr/bin/tee
TEE-A                   = /usr/bin/tee -a
TOUCH                   = /usr/bin/touch
TOUPPER                 = /usr/bin/tr '[:lower:]' '[:upper:]'
TOLOWER                 = /usr/bin/tr '[:upper:]' '[:lower:]'
TR                      = /usr/bin/tr
TRUNCATE-ZERO-CREATE    = /usr/bin/truncate --size=0
# MACRO                 
PIPE-TEE-A-TO-TARGET    = | /usr/bin/tee -a $@
ISO-DATE-NANOSEC        = `/usr/bin/date --iso-8601=ns`
