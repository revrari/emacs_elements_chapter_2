;; Multiple Cursors in Emacs: Are they necessary?

;; Sublime Text leads the way
;; Vim?
;; Emacs
;; John Wiegley URL: https://github.com/jwiegley/dot-emacs/blob/master/init.el
;; URL: https://www.youtube.com/watch?v=cC9oftwpZtw
;; Test
;; Multiple cursors
;; Example:

;; TEST TEXT
;; icicles I – Installation and main idea

;;     • Big, intimidating and powerful program
;;     • Completion frameworks: ido, ivy, icomplete, consult+selectrum
;;     • Icicles enhances minibuffer completion
;;     • So much info on it
;;     • Where to start?

;; icicles II – 5 killer icicles features
;; Icicles-III - Advanced tips, tweaks and features
;; Icicles-IV - More advanced features and tips

;; Nam vestibulum accumsan nisl.
;; Nam vestibulum accumsan nisl.
;; Nam vestibulum accumsan nisl.
;; Etiam vel neque nec dui dignissim bibendum.
;; Donec hendrerit tempor tellus.
;; Fusce sagittis, libero non molestie mollis, magna orci ultrices dolor.
;; Praesent fermentum tempor tellus.
;; Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
;; Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

;; Multiple cursors
;; URL: https://github.com/magnars/multiple-cursors.el

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-d") 'mc/mark-next-like-this)
(global-set-key (kbd "C-k") 'mc/skip-to-next-like-this)
(global-set-key (kbd "M-<f3>") 'mc/mark-all-like-this)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key (kbd "S-<delete>") 'kill-whole-line) ;;  Kill a line in Emacs

;; Search and replace

(defalias 'qr 'query-replace)
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "C-c x") 'replace-regexp)

;; Macros versus multiple cursors

