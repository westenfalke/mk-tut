# .default-target.mk
README.md :
	$(CAT)  01-showcase.md $(PIPE-TEE-A-TO-TARGET)
	-/usr/bin/bash 02-showcase.bash $(PIPE-TEE-A-TO-TARGET)
	$(CAT)  03-showcase.md $(PIPE-TEE-A-TO-TARGET)

.DEFAULT_GOAL := README.md


