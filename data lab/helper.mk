SUBMIT_MESSAGE =
SUBMIT_MESSAGE += "I affirm that I have complied with this course's academic"
SUBMIT_MESSAGE += "integrity policy as defined at"
SUBMIT_MESSAGE += "https://www.cs.cmu.edu/~213/academicintegrity.html [y/N]: "

# Set course/lab variables
include .labname.mk

#####################################################################
# Validate variables
#####################################################################

ifndef COURSECODE
  $(error COURSECODE is not set)
endif
ifndef HANDIN_FILES
  $(error HANDIN_FILES is not set)
endif
ifndef FORMAT_FILES
  $(error FORMAT_FILES is not set)
endif

# Detect if we should submit separately
ifdef LAB_CHECKPOINT
  ifdef LAB_FINAL
    SUBMIT_SEPARATE = 1
  else
    $(error LAB_CHECKPOINT set, but not LAB_FINAL)
  endif
else
  ifdef LAB_FINAL
    $(error LAB_FINAL set, but not LAB_CHECKPOINT)
  endif
  ifndef LAB
    $(error LAB is not set)
  endif
endif

# Check handin parameters
ifdef HANDIN_TAR
  HANDIN_FILE = $(HANDIN_TAR)
else
  ifneq ($(words $(HANDIN_FILES)),1)
    $(error HANDIN_TAR not set, and HANDIN_FILES has more than one file)
  endif
  HANDIN_FILE = $(HANDIN_FILES)
endif

#####################################################################
# Rules to create and verify handin files
#####################################################################

ifdef HANDIN_TAR

$(HANDIN_TAR): $(HANDIN_FILES)
	tar cvf $@ $^

.PHONY: handin
handin: $(HANDIN_TAR)

else

.PHONY: handin
handin:
	@echo "There is no handin tar. Submit \"$(HANDIN_FILE)' directly."

endif

#####################################################################
# Rules to submit to Autolab
#####################################################################

ifdef SUBMIT_SEPARATE

.PHONY: submit
submit:
	@echo "Please use one of the following:"
	@echo "  make submit-checkpoint"
	@echo "  make submit-final"
	@exit 1

.PHONY: submit-checkpoint
submit-checkpoint: $(HANDIN_FILE)
	@echo
	@echo "================================================="
	@echo "Submitting to CHECKPOINT ($(LAB_CHECKPOINT))"
	@echo "================================================="
	@echo
	@echo -n $(SUBMIT_MESSAGE) | fold -s -w 76
	@read -n 1 && echo && echo $$REPLY | grep -iq "^y"
	@autolab submit $(COURSECODE):$(LAB_CHECKPOINT) $<

.PHONY: submit-final
submit-final: $(HANDIN_FILE)
	@echo
	@echo "================================================="
	@echo "Submitting to FINAL ($(LAB_FINAL))"
	@echo "================================================="
	@echo
	@echo -n $(SUBMIT_MESSAGE) | fold -s -w 76
	@read -n 1 && echo && echo $$REPLY | grep -iq "^y"
	@autolab submit $(COURSECODE):$(LAB_FINAL) $<

else

.PHONY: submit
submit: $(HANDIN_FILE)
	@echo -n $(SUBMIT_MESSAGE) | fold -s -w 76
	@read -n 1 && echo && echo $$REPLY | grep -iq "^y"
	@autolab submit $(COURSECODE):$(LAB) $<

endif

#####################################################################
# Rules to check code formatting
#####################################################################

.PHONY: format
format: $(FORMAT_FILES)
	$(LLVM_PATH)clang-format -style=file -i $^

.PHONY: check-format
check-format: .format-checked

.format-checked: $(FORMAT_FILES)
	CLANG_FORMAT=$(LLVM_PATH)clang-format ./check-format $^
	@touch .format-checked
