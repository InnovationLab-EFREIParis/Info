# Makefile for myblog

.PHONY: all publish publish_no_init

all: publish

publish: publish.el
	@echo "Publishing... with current Emacs configurations."
	emacs --batch --load publish.el --funcall org-publish-all

publish_no_init: publish.el
	@echo "Publishing... with --no-init."
	emacs --batch --no-init --load publish.el --funcall org-publish-all

clean:
	@echo "Cleaning up.."
	@rm -rvf *.html~
	@rm -rvf *.el~
	@rm -rvf *.*~
	@rm -rvf ./org/*.org~
	@rm -rvf ./org/prototypage/*.org~
	@rm -rvf ./org/*.html
	@rm -rvf ./org/prototypage/*.html
	@rm -rvf ./org/prototypage/*.html~
	@rm -rvf ./prototypage/*.html~
	#@rm -rvf *.elc
	#@rm -rvf public
	#@rm -rvf ~/.org-timestamps/*

