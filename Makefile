# mk-tut is a Makefile based framework to create better README.md files and instructional guide books for CLI maintained systems.
CHAPTER =
REL_PROJECT_DIR = .
OUTPUT_DIR = ./out

include $(REL_PROJECT_DIR)/.common.mk

.PHONY: all $(CHAPTERS) $(APPENDIX)
all : mk-install README.md $(CHAPTERS) $(APPENDIX)
	@$(ECHO) $@: START 
	@$(ECHO) $@: OK 

README.md :
	@$(ECHO) $@: START 
	#@$(TRUNCATE-ZERO-CREATE) $(REL_PROJECT_DIR)/$(OUTPUT_FILE) 
	@$(ECHO) $@: OK 

.DEFAULT_GOAL := all

$(CHAPTERS) $(APPENDIX): 
	@$(ECHO) $@: START
	@$(MAKE)	--directory=$@ $(TARGET)
	@$(if $(TARGET), $(MAKE) $(TARGET))
	@$(ECHO) $@: OK

.PHONY : mk-update
mk-update :
	@$(ECHO) $@: START
	@$(MAKE) $@ --makefile=$(UPDATE_MAKEFILE)
	@$(ECHO) $@: OK

# Perform all tasks to build the application
#.PHONY : install
mk-install :
	@$(ECHO) $@: START
	@$(MAKE)  $@ --makefile=$(INSTALL_MAKEFILE)
	@$(ECHO) $@: OK

# Delete the <CHAPTER|APPENDIX>.mk files wit customised settings 
# and folder (CHAPTER|APPENDIX) with theh autmatig generated Makefile from those *.mk files
# and remove mk-install lock file
.PHONY : mk-uninstall
mk-uninstall : 
	@$(ECHO) $@: START
	@-$(MAKE) clean 
	@$(MAKE) $@ --makefile=$(UNINSTALL_MAKEFILE)
	@$(ECHO) $@: OK

# Delete the binary files generated from sources
#.PHONY : clean
clean : $(CHAPTERS) $(APPENDIX)
	@$(ECHO) $@: START 
	#@$(MAKE) $@ --makefile=$(UPDATE_MAKEFILE)
	@$(RM-RF) $(REL_PROJECT_DIR)/$(OUTPUT_FILE)
	@$(ECHO) $@: OK 

# default-help.mk
.PHONY : help
help : 
	@$(ECHO) -n $@' - '| $(TOUPPER)
	@$(ECHO) THIS = `$(READLINK-F) ./Makefile`
	@$(ECHO) TARGET = $(TARGET)
	@$(ECHO) PWD = `$(PWD)`
	@$(ECHO) ABS_PROJECT_DIR = $(ABS_PROJECT_DIR)
	@$(ECHO) REL_PROJECT_DIR = $(REL_PROJECT_DIR)
	@$(ECHO) OUTPUT_DIR = $(OUTPUT_DIR)
	@$(ECHO) OUTPUT_FILE = $(OUTPUT_FILE)
	@$(ECHO) CHAPTER = $(CHAPTER)
	@$(ECHO) CHAPTERS = $(CHAPTERS)
