(use-modules (guix channels)
             (guix inferior))

(channel
  (name 'my-packages)
  (url "file:///home/driess/guix-packages")
  (introduction
   (make-channel-introduction
    "ef20625fd538cac8a0573bb1b03cb4f23cbd3999" ; Replace with the initial commit hash
    ))) 
