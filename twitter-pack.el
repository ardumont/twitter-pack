;;; twitter-pack.el --- Twitter setup

;;; Commentary:

;;; Code:

(use-package twittering-mode
  :config
  ;; enabling unread tweets inside the emacs mod
  (twittering-enable-unread-status-notifier)
  ;; setting master password to store the password
  (custom-set-variables '(twittering-use-master-password t)
                        ;; display remaining api calls
                        '(twittering-display-remaining t)
                        ;; inherit hashtag in a RT
                        '(twittering-edit-skeleton 'inherit-any)))

(defvar twitter-pack-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c t t") 'twittering-mode)
    map)
  "Keymap for twitter-pack mode.")

(define-minor-mode twitter-pack-mode
  "Minor mode to consolidate twitter-pack extensions.

\\{twitter-pack-mode-map}"
  :lighter " τ"
  :keymap twitter-pack-mode-map)

(define-globalized-minor-mode global-twitter-pack-mode twitter-pack-mode twitter-pack-on)

(defun twitter-pack-on ()
  "Turn on `twitter-pack-mode'."
  (twitter-pack-mode +1))

(global-twitter-pack-mode)

(provide 'twitter-pack)
;;; twitter-pack ends here
