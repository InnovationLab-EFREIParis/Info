;; Set the package installation directory so that packages aren't stored in the
;; ~/.emacs.d/elpa path.
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

; Install dependencies
(package-install 'htmlize)


;; Code block darker 80%
;(require 'color)
;(set-face-attribute 'org-block nil :background
;                    (color-darken-name
;                     (face-attribute 'default :background) 80))
;

;load the publishing system
(require 'ox-publish)

; Define the publishing project
(setq org-publish-project-alist
      '(

	("org-notes"
         :base-directory "./org/"
         :base-extension "org"
         :publishing-directory "./html"
         :recursive t
         :publishing-function org-html-publish-to-html
	 :with-author nil      ;; Don't include author name
	 :time-stamp-file nil  ;; Don't include time stamp in file
         :auto-sitemap nil
	 )
	
        

	("org-static"
	 :base-directory "org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "./html"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("all"
	 :components ("org-notes" "org-static")
	 )

	))

;; Customize the HTML output
;;(setq org-html-validation-link nil            ;; Don't show validation link
 ;;     org-html-head-include-scripts nil       ;; Use our own scripts
;;      org-html-head-include-default-style nil ;; Use our own styles
;;      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

;;;; Block Code background color
;;;; fontify code in code blocks
;;(setq org-src-fontify-natively t)
;;
;;(org-block-begin-line
;; ((t (:underline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))
;;(org-block-background
;; ((t (:background "#000000"))))
;;(org-block-end-line
;;((t (:overline "#A7A6AA" :foreground "#008ED1" :background "#EAEAFF"))))

;; Generate the site output
(org-publish-all t)

(message "Build complete!")












