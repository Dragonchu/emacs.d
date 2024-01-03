;; Enable Org Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;; Use org-mode for Python source blocks
(add-to-list 'org-src-lang-modes '("python" . python))

;; Optionally, set the Python executable path (replace "/path/to/python" with your Python executable)
;; (setq org-babel-python-command "/path/to/python")

(require 'ox-publish)
(setq org-publish-project-alist
      '(
       ("org-notes"
        :base-directory "~/blog/"
        :base-extension "org"
        :publishing-directory "~/Dragonchu.github.io/"
        :recursive t
        :publishing-function org-html-publish-to-html
        :headline-levels 4             ; Just the default for this project.
        :auto-preamble t
        :html-head "<link rel=\"stylesheet\"
                    href=\"./css/stylesheet.css\"
                    type=\"text/css\"/>"
        )
        ("org-static"
        :base-directory "~/blog/"
        :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
        :publishing-directory "~/Dragonchu.github.io/"
        :recursive t
        :publishing-function org-publish-attachment
        )
        ("blog" :components ("org-notes" "org-static"))
      ))
