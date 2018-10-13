(setq scroll-conservatively 100)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'dracula-theme)
  (package-refresh-contents)
  (package-install 'dracula-theme))

;;;;;;;;;;;

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-map (ansi-color-make-color-map) t)
 '(ansi-color-names-vector
   ["black" "red3" "green3" "yellow3" "#FFE203" "magenta3" "cyan3" "gray90"])
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "13a654e817774e669cc17ee0705a3e1dfc62aedb01005a8abe2f8930a1d16d2e" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(ibuffer-deletion-face (quote diredp-deletion-file-name))
 '(ibuffer-marked-face (quote diredp-flag-mark))
 '(package-selected-packages
   (quote
    (dashboard mark-multiple company-tern impatient-mode cider clojure-mode projectile emmet-mode yasnippet-snippets flycheck zzz-to-char expand-region avy skewer-mode web-mode company-web indium magit golden-ratio emms elcord linum-relative twittering-mode swiper popup-kill-ring diminish spaceline company rainbow-mode smex ido-vertical-mode org-bullets beacon spacemacs-theme which-key use-package)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
