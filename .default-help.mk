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

.DEFAULT_GOAL := help
