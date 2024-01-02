;; Enable Org Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

;; Use org-mode for Python source blocks
(add-to-list 'org-src-lang-modes '("python" . python))

;; Optionally, set the Python executable path (replace "/path/to/python" with your Python executable)
;; (setq org-babel-python-command "/path/to/python")
