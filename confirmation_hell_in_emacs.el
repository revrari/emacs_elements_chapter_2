;; The wretchedness of Confirmation in Emacs
;; [2022-12-27 Tue]

(setq backup-directory-alist '(("." . "~/.config/emacs/backups")))
(with-eval-after-load 'tramp
(add-to-list 'tramp-backup-directory-alist
             (cons tramp-file-name-regexp nil)))

(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.config/emacs/auto-save-list/" t)))

(setq dired-clean-confirm-killing-deleted-buffers nil)
(setq dired-confirm-shell-command nil)
(setq dired-no-confirm t)
(setq dired-deletion-confirmer '(lambda (x) t))
(setq dired-recursive-deletes 'always)

(setq confirm-kill-emacs nil)
(setq confirm-kill-processes nil)

(setq confirm-nonexistent-file-or-buffer nil)
(set-buffer-modified-p nil)

(defalias 'yes-or-no-p 'y-or-n-p)

;; I would like to know how I can never again be prompted when I invoke the command `kill-this-buffer' with the words `Buffer <name> modified; kill anyway?'

;; I would thus like to kill the buffer immediately without saving any changes made to the buffer and without having to say yes or no or even y or n. I understand changes will be lost.

(add-hook 'kill-buffer-query-functions
          (lambda () (not-modified) t))

;; https://emacs.stackexchange.com/questions/75113/never-prompt-me-again-with-the-words-buffer-modified?noredirect=1#comment122819_75113

