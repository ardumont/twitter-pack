(install-packs '(twittering-mode))

;; setting master password to store the password
(setq twittering-use-master-password t)

;; enabling unread tweets inside the emacs mod
(twittering-enable-unread-status-notifier)

;; display remaining api calls
(setq twittering-display-remaining t)

;; inherit hashtag in a RT
(setq twittering-edit-skeleton 'inherit-any)
