;;; init.el -*- lexical-binding: t; -*-

;;; Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;;;; use-package
(straight-use-package 'use-package)

;;; Themes
(use-package modus-themes
  :straight t)
(load-theme 'modus-vivendi t)
(enable-theme 'modus-vivendi)

;;; Sensible defaults
(setq indent-tabs-mode nil)
(setq create-lockfiles nil)
(setq make-backup-files nil)
