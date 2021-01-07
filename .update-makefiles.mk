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
	@[ -f $@.mk ] || $(ECHO) $@.mk : initializing with standard phony targets
	@[ -f $@.mk ] || $(CAT) $(PHONY_TARGETS)                  >> $@.mk
	@[ -d $@    ] || $(MKDIR-P) -v                               $@
	@$(TRUNCATE-ZERO-CREATE)                                     $@/Makefile
	@$(ECHO) $@/Makefile : updateing meta data and heeader information
	@$(ECHO) # Makefile automatic HEADER                      >> $@/Makefile
	@$(ECHO) CHAPTER = $@                                     >> $@/Makefile
	@$(ECHO) REL_PROJECT_DIR = ..                             >> $@/Makefile
	@$(ECHO) include ../$(COMMONMK)                           >> $@/Makefile
	@$(ECHO) OUTPUT_DIR = ../$(OUTPUT_DIR)                    >> $@/Makefile
	@[ -f $@.mk ] && $(ECHO) $@/Makefile : updating customized $@.mk targets
	@[ -f $@.mk ] && $(CAT) $@.mk                             >> $@/Makefile
	@[ -f $@.mk ] && $(ECHO) $@/Makefile : adding default help targets
	@[ -f $@.mk ] && $(CAT) $(DEFAULT_HELP_TARGET)           >> $@/Makefile

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
