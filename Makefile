# Creating A Hugo Theme From Scratch
CHAPTER =
REL_PROJECT_DIR = .
OUTPUT_DIR = ./out

include $(REL_PROJECT_DIR)/.common.mk

.PHONY: all 
all : 
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)
	echo Done and dustes!  | tee -a $(OUTPUT_FILE)

README.md :
	TRUNCATE-ZERO-CREATE $@ 
	echo ## $@ | tee -a $(OUTPUT_FILE)

#.DEFAULT_GOAL := all

$(CHAPTERS) $(APENDIX) : 
	$(MAKE)	--directory=$@ $(TARGET)
	$(if $(TARGET), $(MAKE) $(TARGET))

# default-target.mk (witouth help @see default-help.mk)

# Perform all tasks to build the application
.PHONY : all
all : 
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)
	echo $@ For One And One For $@

.PHONY : mk-update
mk-update :
	$(MAKE) $@ --makefile=$(UPDATE_MAKEFILE)
	
# Perform all tasks to build the application
.PHONY : install
install :
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# Delete the <CHAPTER|APPENDIX>.mk files wit customised settings 
# and folder (CHAPTER|APPENDIX) with theh autmatig generated Makefile from those *.mk files
.PHONY : mk-clean
mk-clean : 
	$(MAKE) $@ --makefile=$(UPDATE_MAKEFILE)

# Delete the binary files generated from sources
.PHONY : clean
clean : 
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# Delete all the generated files that were not in the original source distribution
.PHONY : distclean
distclean :
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# Create a tags table for use by editors
.PHONY : TAGS
TAGS :
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# Create GNU info files from their Texinfo sources
.PHONY : info
info :
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# Run any tests associated with this application
.PHONY : check
check :
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX)

# default-help.mk
.PHONY : help
help : 
	$(MAKE) TARGET=$@ $(CHAPTERS) $(APPENDIX) 
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
