;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq line-number-mode t)


(set-frame-font "IosevkaMedium 13")
(setq font-lock-maximum-decoration t)

;;Rust----------------------------------
(add-to-list 'load-path "/home/tomas/.emacs.d/elpa/rust-mode-20220217.2009")
(autoload 'rust-mode "rust-mode" nil t)
(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)
(setq eglot-rust-mode-uses-rustic t)
(add-hook 'rust-mode-hook 'eglot-ensure)
;;--------------------------------------

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(electric-pair-mode t)
(setq electric-pair-preserve-balance nil)

(setq make-backup-files nil)
(setq whitespace-style '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark))

(setq whitespace-display-mappings
      '(
	    (space-mark 32 [183] [46])

	))

(global-whitespace-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(package-selected-packages
   '(company adjust-parens eglot rust-mode parinfer-rust-mode gruber-darker-theme)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
