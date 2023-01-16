; load the publishing system
(require 'ox-publish)

; Define the publishing project
(setq org-publish-project-alist
      '(

	("org-notes"
         :base-directory "org/"
         :base-extension "org"
         :publishing-directory "./"
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
	 )
	
        

	("org-static"
	 :base-directory "org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "./"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("all"
	 :components ("org-notes" "org-static")
	 )

	))

;; Generate the site output
(org-publish-all t)

(message "Build complete!")






























