;;; early-init.el -*- lexical-binding: t; -*-

(defvar my/gc-cons-threshold 16777216)
(defvar my/gc-cons-percentage 0.1)
(defvar my/file-name-handler-alist file-name-handler-alist)

(defun my/emacs-startup-setup ()
  (setq gc-cons-threshold my/gc-cons-threshold)
  (setq gc-cons-percentage my/gc-cons-percentage)
  (setq file-name-handler-alist my/file-name-handler-alist))

(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)
(setq file-name-handler-alist nil)

(add-hook 'emacs-startup-hook #'my/emacs-startup-setup)

(setq debug-on-error t)
(setq vc-follow-symlinks nil)
(setq site-run-file nil)
(setq initial-major-mode 'fundamental-mode)
(setq inhibit-startup-message t)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
