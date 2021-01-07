# default-target.mk (witouth help @see default-help.mk)

# Perform all tasks to build the application
.PHONY : all
all : 
	echo $@ For One And One For $@

# Perform all tasks to build the application
.PHONY : install
install :

# Delete the binary files generated from sources
.PHONY : clean
clean :

# Delete all the generated files that were not in the original source distribution
.PHONY : distclean
distclean :

# Create a tags table for use by editors
.PHONY : TAGS
TAGS :

# Create GNU info files from their Texinfo sources
.PHONY : info
info :

# Run any tests associated with this application
.PHONY : check
check :
