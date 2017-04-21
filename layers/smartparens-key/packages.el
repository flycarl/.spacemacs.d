;;; packages.el --- smartparens-key layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: 嘉 邓 <flycarl@CaoDun.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `smartparens-key-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `smartparens-key/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `smartparens-key/pre-init-PACKAGE' and/or
;;   `smartparens-key/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst smartparens-key-packages
  '(smartparens
    evil-smartparens))

(defun smartparens-key/post-init-smartparens ()
  (spacemacs|use-package-add-hook smartparens
    :post-config
    (sp-local-pair 'clojure-mode "`" "`")))


(defun smartparens-key/init-evil-smartparens ()
  (use-package evil-smartparens
    :defer t
    :init
    (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)))



;;; packages.el ends here
