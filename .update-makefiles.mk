# Creating And Mainatning Capter based Makefiles
REL_PROJECT_DIR = .
CHAPTER     = _index
COMMONMK = .common.mk

include $(REL_PROJECT_DIR)/$(COMMONMK)

.PHONY: all
all : 

.PHONY: mk-update $(CHAPTERS) $(APPENDIX)
mk-update : $(CHAPTERS) $(APPENDIX) 
	@$(ECHO) 'Makefiles sucsessfuly updated from custom *.mk files'
	@$(LS) */Makefile
	@$(LS) ./*.mk
	@$(ECHO)

$(CHAPTERS) $(APPENDIX):
	@-[ -f $@/Makefile ] || $(MOVE--VERBOSE--BACKUP-N) $@.mk $@.mk.ORI
	@[ -f $@/Makefile ] || $(ECHO) $@.mk : adding phony targets
	@[ -f $@/Makefile ] || $(CAT) $(PHONY_TARGETS)                  >> $@.mk
	@[ -f $@/Makefile ] || $(ECHO) $@.mk : adding default target
	@[ -f $@/Makefile ] || $(CAT) $(DEFAULT_TARGET)                 >> $@.mk
	@[ -f $@/Makefile ] || $(ECHO) $@.mk : adding help target
	@[ -f $@/Makefile ] || $(CAT) $(HELP_TARGET)                    >> $@.mk
	@[ -f $@/Makefile ] || $(ECHO) $@ : creating folder for custom data 
	@[ -f $@/Makefile ] || $(MKDIR-P) -v                               $@
	@[ -f $@/Makefile ] || $(ECHO) $@ : adding default showcase files
	@[ -f $@/Makefile ] || $(ECHO) '## INTRO - $@'> $@/$(FILE_SHOWCASE_PART_01) 
	@[ -f $@/Makefile ] || $(ECHO) '$(HASH-BANG)' >> $@/$(FILE_SHOWCASE_PART_02)
	@[ -f $@/Makefile ] || $(ECHO) '$(ECHO) ACTION - HALLO WELT! $(DATE-ISO-SEC)' >> $@/$(FILE_SHOWCASE_PART_02)
	@[ -f $@/Makefile ] || $(ECHO) '## OUTRO - $@' >> $@/$(FILE_SHOWCASE_PART_03)
	@[ -f $@/Makefile ] || $(ECHO) 'description' >> $@/$(FILE_SHOWCASE_PART_03)
	@$(TRUNCATE-ZERO-CREATE)                                     $@/Makefile
	@$(ECHO) $@/Makefile : updateing meta data and heeader information
	@$(ECHO) # Makefile automatic HEADER                      >> $@/Makefile
	@$(ECHO) CHAPTER = $@                                     >> $@/Makefile
	@$(ECHO) REL_PROJECT_DIR = ..                             >> $@/Makefile
	@$(ECHO) include ../$(COMMONMK)                           >> $@/Makefile
	@$(ECHO) OUTPUT_DIR = ../$(OUTPUT_DIR)                    >> $@/Makefile
	@[ -f $@.mk ] && $(ECHO) $@/Makefile : updating customized $@.mk targets
	@[ -f $@.mk ] && $(CAT) $@.mk                             >> $@/Makefile

.PHONY : mk-clean
mk-clean :
	@$(ECHO) CLEAN 
	@$(ECHO) going to delete the following folder $(CHAPTERS) $(APPENDIX)
	@$(ECHO) $(LS) $(CHAPTERS) $(APPENDIX)
	@$(RM-RFI) $(CHAPTERS) $(APPENDIX)
	@$(ECHO) $(LS) *.mk
	@$(ECHO) 'going to delete the following *.mk' files
	@$(RM-RFI) ./*.mk

### Makefile.default
.PHONY : help
help : 
	$(ECHO) $@ | $(TR) '[:lower:]' '[:upper:]'
	$(ECHO) TARGET = $(TARGET)
	$(ECHO) PWD = `$(PWD)`
	$(ECHO) ABS_PROJECT_DIR = $(ABS_PROJECT_DIR)
	$(ECHO) REL_PROJECT_DIR = $(REL_PROJECT_DIR)
	$(ECHO) OUTPUT_DIR = $(OUTPUT_DIR)
	$(ECHO) OUTPUT_FILE = $(OUTPUT_FILE)
	$(ECHO) CHAPTER = $(CHAPTER)
	$(ECHO) CHAPTERS = $(CHAPTERS)

.DEFAULT_GOAL := update 
