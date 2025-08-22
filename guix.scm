(use-modules (guix channels)
             (guix inferior))

(channel
  (name 'my-packages)
  (url "file:///home/driess/guix-packages")
  (introduction
   (make-channel-introduction
    "YOUR_COMMIT_HASH" ; Replace with the initial commit hash
    (openpgp-fingerprint
     "YOUR_GPG_FINGERPRINT")))) ; Optional: Add your GPG fingerprint
