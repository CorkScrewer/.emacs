(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq backup-directory-alist '(("" . "D:/emacs_backup/")))

(setq visible-bell nil
      ring-bell-function #'ignore)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-hl-line-mode 1)

(delete-selection-mode 1)
(electric-indent-mode 1)
;(electric-pair-mode 1)
(display-time-mode 1)

(setq mouse-wheel-scroll-amount '(5 ((shift) . 5)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq fast-but-imprecise-scrolling t)

(setq-default undo-limit 20000000)
(setq-default undo-strong-limit 40000000)

(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default compile-command "c.bat")

(global-set-key (kbd "M-k") 'mark-whole-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-j") 'newline)
(global-set-key (kbd "M-j") 'ff-find-other-file)
(global-set-key (kbd "C-S-k") 'kill-current-buffer)

(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "C-S-p") 'backward-paragraph)
(global-set-key (kbd "C-S-n") 'forward-paragraph)

(global-set-key (kbd "C-q") 'replace-string)
(global-set-key (kbd "C-u") 'other-window)
(global-set-key (kbd "C-o") 'find-file)

(global-set-key (kbd "C-=") 'quick-calc)

(global-set-key (kbd "M-q") 'delete-window)
(global-set-key (kbd "M-a") 'delete-other-windows)
(global-set-key (kbd "M-y") 'split-window-horizontally)

(global-set-key (kbd "M-:") 'first-error)
(global-set-key (kbd "M-}") 'next-error)
(global-set-key (kbd "M-{") 'previous-error)

(global-set-key [f4]  'compile)
(global-set-key [f5]  'recompile)
(global-set-key [f6]  'run-a-exe)
(global-set-key [f11] 'open-cmd)
(global-set-key [f12] 'open-folder)

(defun goto-mark()
  (interactive)
  (set-mark-command 2))

(defun untabify-save-buffer ()
  "Save the buffer after untabifying it."
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (untabify (point-min) (point-max))))
  (save-buffer))

(defun run-a-exe()
  "Runs a.exe from wherever you are."
  (interactive)
  (async-shell-command "a.exe"))

(defun open-folder()
  "Opens the current folder."
  (interactive)
  (shell-command "start."))

(defun open-cmd()
  "Opens the command prompt."
  (interactive)
  (async-shell-command "start"))

;; (define-minor-mode my-keys-minor-mode
;;   "A minor mode so that my key settings override annoying major modes."
;;   :init-value t
;;   :lighter " my-keys")

;; (my-keys-minor-mode 1)
;; (defun my-minibuffer-setup-hook ()
;;   (my-keys-minor-mode 0))
;; (add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#3cafa5")
 '(cua-normal-cursor-color "#8d9fa1")
 '(cua-overwrite-cursor-color "#c49619")
 '(cua-read-only-cursor-color "#93a61a")
 '(custom-enabled-themes '(drax))
 '(custom-safe-themes
   '("8b58ef2d23b6d164988a607ee153fd2fa35ee33efc394281b1028c2797ddeebb" "fe36e4da2ca97d9d706e569024caa996f8368044a8253dc645782e01cd68d884" "8f567db503a0d27202804f2ee51b4cd409eab5c4374f57640317b8fcbbd3e466" "46b2d7d5ab1ee639f81bde99fcd69eb6b53c09f7e54051a591288650c29135b0" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "f7b2b47cce08a9a6034d04048e9b0cef443e4ea7d3254194b7159b04fae8add7" "98a9469270cbfe77f1cedfdfe46139dbe1401e5af6f87767362aeaf38c6b1211" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "669b0c23ee436f297bb286f46daeea9b8ec322cb50758e7ad704d68b36271da3" "f8aa0da2755c476ab683c124df22a7c8aced57caed23d887849e7cade149580e" "73fa7f35aa862e29b07de70966a29636a3fcd98215072ef3988c82fa02ee6845" "7f0941545600781dfbe3a5c9a019ca6c01345b6cc23a315ff78cbe90269230d6" "5d59bd44c5a875566348fa44ee01c98c1d72369dc531c1c5458b0864841f887c" default))
 '(display-time-mode t)
 '(electric-pair-mode nil)
 '(fci-rule-color "#01323d")
 '(global-hl-line-mode nil)
 '(highlight-changes-colors '("#e2468f" "#7a7ed2"))
 '(highlight-symbol-colors
   '("#98695021d64f" "#484f5a50ffff" "#9ae80000c352" "#00000000ffff" "#98695021d64f" "#9ae80000c352" "#484f5a50ffff"))
 '(highlight-symbol-foreground-color "#9eacac")
 '(highlight-tail-colors
   '(("#01323d" . 0)
     ("#687f00" . 20)
     ("#008981" . 30)
     ("#0069b0" . 50)
     ("#936d00" . 60)
     ("#a72e01" . 70)
     ("#a81761" . 85)
     ("#01323d" . 100)))
 '(hl-bg-colors
   '("#936d00" "#a72e01" "#ae1212" "#a81761" "#3548a2" "#0069b0" "#008981" "#687f00"))
 '(hl-fg-colors
   '("#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732" "#002732"))
 '(hl-paren-colors '("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11"))
 '(linum-format " %5i ")
 '(lsp-ui-doc-border "#9eacac")
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#ec423a" "#db5823" "#c49619" "#687f00" "#c3d255" "#0069b0" "#3cafa5" "#e2468f" "#7a7ed2"))
 '(package-selected-packages
   '(glsl-mode xah-fly-keys helm-gtags zenburn-theme yasnippet which-key use-package solarized-theme rustic rust-mode naysayer-theme monokai-theme monokai-alt-theme molokai-theme magit lsp-ui lsp-dart key-chord irony hover helm-xref helm-lsp flycheck evil-visual-mark-mode esup elcord csharp-mode company-c-headers chess ccls bongo auto-complete arjen-grey-theme))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(pos-tip-background-color "#01323d")
 '(pos-tip-foreground-color "#9eacac")
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#93a61a" "#01323d" 0.2))
 '(term-default-bg-color "#002732")
 '(term-default-fg-color "#8d9fa1")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ec423a")
     (40 . "#ffffa21b0000")
     (60 . "#ffffd2170000")
     (80 . "#c49619")
     (100 . "#fffffffe0000")
     (120 . "#fffffffe0000")
     (140 . "#fffffffe0000")
     (160 . "#fffffffe0000")
     (180 . "#93a61a")
     (200 . "#dc61ffb77bfe")
     (220 . "#c516ffa79f16")
     (240 . "#a726ffaac017")
     (260 . "#7bfcffc6e035")
     (280 . "#3cafa5")
     (300 . "#0000fffffffe")
     (320 . "#0000fffffffe")
     (340 . "#0000fffffffe")
     (360 . "#3c98e0")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002732" "#01323d" "#ae1212" "#ec423a" "#687f00" "#93a61a" "#936d00" "#c49619" "#0069b0" "#3c98e0" "#a81761" "#e2468f" "#008981" "#3cafa5" "#8d9fa1" "#60767e"))
 '(xterm-color-names
   ["#01323d" "#ec423a" "#93a61a" "#c49619" "#3c98e0" "#e2468f" "#3cafa5" "#faf3e0"])
 '(xterm-color-names-bright
   ["#002732" "#db5823" "#62787f" "#60767e" "#8d9fa1" "#7a7ed2" "#9eacac" "#ffffee"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Lucida Console" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
