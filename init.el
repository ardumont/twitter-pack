(install-packs '(twittering-mode))

;; setting master password to store the password
(setq twittering-use-master-password t)

;; Load bindings config
(live-load-config-file "bindings.el")
