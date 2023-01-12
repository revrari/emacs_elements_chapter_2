;; AUTOMATIC SAVING OF MODES, SCRATCH BUFFER, AND REGISTERS
;; Three packages for automatic saving in Emacs
;; Thu 12 Jan 2023 08:18:18 SAST

;; REAL-AUTO-SAVE
(require 'real-auto-save)
(add-hook 'diary-mode-hook 'real-auto-save-mode)
(add-hook 'text-mode-hook 'real-auto-save-mode)
(add-hook 'prog-mode-hook 'real-auto-save-mode)

;;; PERSISTENT-SCRATCH
(persistent-scratch-setup-default)
(setq initial-scratch-message "")

;;; SESSION
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(setq session-use-package t nil (session))

;; EXAMPLE: (straight-use-package 'lorem-ipsum)
