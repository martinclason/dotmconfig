(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (helm swift-mode neotree markdown-mode gruvbox-theme flymd dash-at-point clojure-mode-extra-font-locking cider auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Themes

(load-theme 'gruvbox)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Settings

;; Remove the toolbar
(tool-bar-mode -1)

(toggle-scroll-bar -1)

;; Disable notification sounds
(setq ring-bell-function 'ignore)

;; Line numbers
(global-linum-mode 1)
(setq column-number-mode t)

;; Bar cursor
(setq-default cursor-type 'bar)

;; To replace text that is selected when typing.
(delete-selection-mode 1)

(show-paren-mode 1)

;; White space
(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 79)
(setq whitespace-global-modes '(not markdown-mode))
(global-whitespace-mode t)

;; Auto complete
(ac-config-default)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My key bindings

(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)

;; Doesn't work. OS seems to take control over this.
;; ;; (global-set-key (kbd "s-§") 'other-window)
;; ;; (global-set-key (kbd "s-°") 'other-frame)

;; Fix alt keys
;; ;; (setq ns-alternate-modifier 'meta)
;; ;; (setq ns-right-alternate-modifier 'none)
(setq mac-option-modifier 'meta)
(setq mac-right-option-modifier 'none)
(setq mac-command-modifier 'super)

;; Keybonds
(global-set-key [(super a)] 'mark-whole-buffer)
(global-set-key [(super v)] 'yank)
(global-set-key [(super c)] 'kill-ring-save)
(global-set-key [(super x)] 'kill-region)
(global-set-key [(super s)] 'save-buffer)
(global-set-key [(super f)] 'isearch-forward)
(global-set-key [(super g)] 'isearch-repeat-forward)
(global-set-key [(super shift g)] 'isearch-repeat-backward)
(global-set-key [(super l)] 'goto-line)
(global-set-key [(super w)]
                (lambda () (interactive) (delete-window)))
(global-set-key [(super z)] 'undo)
(global-set-key [(super k)] 'kill-this-buffer)
(global-set-key [(shift super z)] 'redo)
(global-set-key [(super q)] 'save-buffers-kill-emacs)

(global-set-key [(meta up)] 'next-buffer)
(global-set-key [(meta down)] 'previous-buffer)

;; Esc quits
(global-set-key (kbd "<escape>") 'keyboard-quit)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Other
;; Fixa ada newline
(setq ada-ret-binding 'ada-indent-newline-indent-conditional)

(defun window-split-flip ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
	     (next-win-buffer (window-buffer (next-window)))
	     (this-win-edges (window-edges (selected-window)))
	     (next-win-edges (window-edges (next-window)))
	     (this-win-2nd (not (and (<= (car this-win-edges)
					 (car next-win-edges))
				     (<= (cadr this-win-edges)
					 (cadr next-win-edges)))))
	     (splitter
	      (if (= (car this-win-edges)
		     (car (window-edges (next-window))))
		  'split-window-horizontally
		'split-window-vertically)))
	(delete-other-windows)
	(let ((first-win (selected-window)))
	  (funcall splitter)
	  (if this-win-2nd (other-window 1))
	  (set-window-buffer (selected-window) this-win-buffer)
	  (set-window-buffer (next-window) next-win-buffer)
	  (select-window first-win)
	  (if this-win-2nd (other-window 1))))))

;; To make shift mouse click extend selected text
(define-key global-map (kbd "<S-down-mouse-1>") 'mouse-save-then-kill)

;; Neotree
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(global-set-key (kbd "s-t") 'neotree-toggle)
(setq neo-window-fixed-size nil)

;; Flymd
(defun my-flymd-browser-function (url)
  (let ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox " url)
           nil
           "/usr/bin/open"
           (list "-a" "firefox" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)
(setq flymd-output-directory "/Users/martinclason/.emacs.d/flymd-temp")
(add-hook 'markdown-mode-hook (lambda () (visual-line-mode)))

;; Dash integration
(global-set-key (kbd "s-d") 'dash-at-point)
(global-set-key (kbd "s-e") 'dash-at-point-with-docset)

;; Helm
(require 'helm-config)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font-lock

;; (require 'font-lock)

;; (defun --copy-face (new-face face)
;;   "Define NEW-FACE from existing FACE."
;;   (copy-face face new-face)
;;   (eval `(defvar ,new-face nil))
;;   (set new-face new-face))

;; (--copy-face 'font-lock-label-face  ; labels, case, public, private, proteced, namespace-tags
;;          'font-lock-keyword-face)
;; (--copy-face 'font-lock-doc-markup-face ; comment markups such as Javadoc-tags
;;          'font-lock-doc-face)
;; (--copy-face 'font-lock-doc-string-face ; comment markups
;;          'font-lock-comment-face)

;; (global-font-lock-mode t)
;; (setq font-lock-maximum-decoration t)

;; (font-lock-add-keywords 'c++-mode
;;  `((,(concat
;;    "\\<[_a-zA-Z][_a-zA-Z0-9]*\\>"       ; Object identifier
;;    "\\s *"                              ; Optional white space
;;    "\\(?:\\.\\|->\\)"                   ; Member access
;;    "\\s *"                              ; Optional white space
;;    "\\<\\([_a-zA-Z][_a-zA-Z0-9]*\\)\\>" ; Member identifier
;;    "\\s *"                              ; Optional white space
;;    "(")                                 ; Paren for method invocation
;;    1 'font-lock-function-name-face t)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Hooks

;;(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

(defun my-c++-hook ()
	     (c-set-style "bsd")
	     (c-set-offset 'innamespace [4])
	     (setq c-basic-offset 4)
	     (hs-minor-mode 1)
	     (local-set-key (kbd "RET") 'newline-and-indent)
	     (hs-minor-mode)
             (local-set-key (kbd "M-s M-a") 'hs-show-block)
             (local-set-key (kbd "M-s M-d") 'hs-hide-block)
             (local-set-key (kbd "M-s M-s") 'hs-toggle-hiding)
	     )

;; (add-hook 'c++-mode-hook
;; 	  '(lambda ()
;; 	  (auto-jump-init '(("for" . ("for" "hej" "hopp"))))))
;;       ;; '(lambda()
;;       ;;   ;; (font-lock-add-keywords
;;       ;;   ;;  nil '(;; complete some fundamental keywords
;;       ;;   ;;    ("\\<\\(void\\|unsigned\\|signed\\|char\\|short\\|bool\\|int\\|long\\|float\\|double\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ;; add the new C++11 keywords
;;       ;;   ;;    ("\\<\\(alignof\\|alignas\\|constexpr\\|decltype\\|noexcept\\|nullptr\\|static_assert\\|thread_local\\|override\\|final\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ("\\<\\(char[0-9]+_t\\)\\>" . font-lock-keyword-face)
;;       ;;   ;;    ;; PREPROCESSOR_CONSTANT
;;       ;;   ;;    ("\\<[A-Z]+[A-Z_]+\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; hexadecimal numbers
;;       ;;   ;;    ("\\<0[xX][0-9A-Fa-f]+\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; integer/float/scientific numbers
;;       ;;   ;;    ("\\<[\\-+]*[0-9]*\\.?[0-9]+\\([ulUL]+\\|[eE][\\-+]?[0-9]+\\)?\\>" . font-lock-constant-face)
;;       ;;   ;;    ;; user-types (customize!)
;;       ;;   ;;    ("\\<[A-Za-z_]+[A-Za-z_0-9]*_\\(t\\|type\\|ptr\\)\\>" . font-lock-type-face)
;;       ;;   ;;    ("\\<\\(xstring\\|xchar\\)\\>" . font-lock-type-face)
;;       ;;   ;;    ))
;;       ;; 	 (auto-jump-init (("for" . ("for" "hopp" "mmmm"))))
;;       ;; 	 ))
;;       ;;    ;;t))

(add-hook 'c++-mode-hook 'my-c++-hook)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; (setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))


;; Auto jump
(load "~/.emacs.d/auto-jump.el")
(global-set-key (kbd "C-c SPC") 'auto-jump-deduce)

(add-hook 'c++-mode-hook
	  '(lambda ()
	     (auto-jump-init '(("for" . ("for ("
					 "; "
					 "; "
					 ")\n{\n"
					 "\n};"
					 ""))))))

(add-hook 'ada-mode-hook
	  '(lambda ()
	     (auto-jump-init '(("procedure" . ("procedure "
					       " is\n"
					       "begin\n"
					       "end "
					       ";"))))))
