#!/bin/sh
emacs -Q --script ./publish.el --funcall org-publish-all
make $* clean
