# Some simple tweaks that changed the way I use Emacs

(defun config-visit ()
 (interactive)
 (find-file "c:/red/.emacs.default/init.el"))
(global-set-key (kbd "C-c d") 'config-visit)

(global-set-key (kbd "C-<down>") (kbd "C-u 1 C-v"))
(global-set-key (kbd "C-<up>") (kbd "C-u 1 M-v"))

(global-set-key (kbd "C-q") 'kill-this-buffer)

(global-set-key (kbd "C-c w") 'whitespace-cleanup)

(global-set-key (kbd "M-/") 'hippie-expand)

(global-set-key (kbd "C-c r") 'remember)

(global-set-key (kbd "<f5>") (lambda() (interactive)(find-file "~/")))

(bind-key "<f2> <right>" 'windmove-right)
(bind-key "<f2> <left>" 'windmove-left)
(bind-key "<f2> <up>" 'windmove-up)
(bind-key "<f2> <down>" 'windmove-down)

(bind-key "C-." 'avy-goto-word-1)

'(save-place-mode t)

