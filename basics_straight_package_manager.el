;; The basics of the Straight Package Manager: Video I
;; [2022-12-27 Tue]

;; An exciting cutting edge package manager
;; URL: https://github.com/raxod502/straight.el
;; Why Straight? With Straight one can:
;; Install Emacs packages listed on MELPA, GNU ELPA, or Emacsmirror, or provide your own recipes.
;; Packages are cloned as Git or other repos
;; You can basically install any package in existence, e.g. `icicles', `bookmark+'
;; One can use version lockfiles to ensure 100% reproducibility of your Emacs configuration.
;; You can install your packages manually and `Straight.el' will load them for you.
;; Or you can also have `Straight.el' install your packages, while you provide the recipes explicitly.
;; One can use Straight to try out a package without installing it.
;; `M-x straight-use-package'
;; Helps to solves bugs with `Emacs -Q'
;; Takes a minute or two to update all your packages, but does not overwrite your local changes
;; URL: https://github.com/raxod502/straight.el#version-control-operations
;; Program does a great deal. I like the simplicity of it.

;; Supports a minimum version of `Emacs 25.1'
;; You must have GIT installed to use Straight
;; Make changes to a package simply by editing its source code
;; `straight.el' does not provide any user interface for package management
;; One area of murkiness: what is Straight's relationship to `use-package'
;; Straight replaces `package.el' but not use-package
;; One would not use `package.el' and `straight.el' together (not recommended)
;; One can use Straight and use-package together
;; One can use Straight alone without use-package!
;; I have used both Straight and use-package together, and now I use only Straight

(defvar bootstrap-version) ;; Straight
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
     (bootstrap-version 5))
 (unless (file-exists-p bootstrap-file)
   (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
     (goto-char (point-max))
     (eval-print-last-sexp)))
 (load bootstrap-file nil 'nomessage))

;; Set these customisations:
;; set `straight-repository-branch' to `develop'
;; set `package-enable-at-startup' to `nil' – if you run Emacs 27 or above
;; Make sure you remove all code that relates to `package.el': i.e. references to `package-initialise', `package-archives', etc.
;; The variable `use-package-always-ensure' is associated with `package.el', and you should not use it with `straight.el'.

;; How to install packages with Straight

(straight-use-package 'lorem-ipsum)

;; How to get Straight to work with use-package
;; First install use-package with straight.el:

(straight-use-package 'use-package)

;; set `straight-use-package-by-default t'
;; If you use use-package, it will invoke straight.el to install the package
;; NOTE: do not use `ensure t' syntax (which is for package.el) but `:straight t'
;; NOTE: Specifying `:straight t' in use-package syntax is not necessary if you set `straight-use-package-by-default to t'.

(use-package org-roam
 :straight t
 :after org
 :hook
     (after-init . org-roam-mode)
 :bind (("C-h /" . org-roam-find-file)
	     ([f8] . org-roam-find-file)
	     ("C-c i" . 'org-roam-insert)
	     ("C-c o" . 'org-roam-find-directory))
     :config
     (setq org-roam-db-update-method 'immediate)
     (setq org-roam-completion-system 'default)
     (setq org-roam-dailies-directory "~/org-roam/daily"))

;; You can disable use-package integration entirely by customising straight-enable-use-package-integration.
;; Where you packages are stored
;; The local repositories are kept in PATH: ~/.emacs.d/straight/repos
;; The built packages are kept in PATH: ~/.emacs.d/straight/build
;; How do I uninstall a package?
;; Under package.el, every package on disk gets loaded into Emacs, whether you asked for it or not. Under
;; straight.el, only the packages you explicitly mention in your init-file get loaded into Emacs.
;; URL: https://github.com/raxod502/straight.el
