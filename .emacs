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
;;(setq line-number-mode t)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
;;(setq pixel-scroll-precision-large-scroll-height 40.0)
;;(setq pixel-scroll-precision-interpolation-factor 30)



(set-frame-font "IosevkaMedium 13")
(setq font-lock-maximum-decoration t)

;;Rust----------------------------------
(add-to-list 'load-path "/home/tomas/.emacs.d/elpa/rust-mode-20220217.2009")
(autoload 'rust-mode "rust-mode" nil t)
(add-hook 'rust-mode-hook
	  (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)
;;--------------------------------------

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(electric-pair-mode t)
(setq electric-pair-preserve-balance nil)

(setq make-backup-files nil)
(setq whitespace-style '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark))

(setq whitespace-display-mappings
      '(
	    (space-mark 32 [183] [46])

	))

;;Smooth Scrolling

(require 'smooth-scrolling)
(smooth-scrolling-mode 1)


;;(global-whitespace-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" "3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(package-selected-packages
   '(ample-theme gruvbox-theme material-theme smooth-scrolling adjust-parens rust-mode gruber-darker-theme)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-empty ((t (:background "#181818" :foreground "#282828"))))
 '(whitespace-indentation ((t (:background "#181818" :foreground "#282828"))))
 '(whitespace-trailing ((t (:background "#181818" :foreground "#282828")))))
