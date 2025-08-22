(use-modules (guix packages)
             (guix git-download)
             (guix build-system gnu)
             (gnu packages)
             (gnu packages emacs)
             (gnu packages gcc)
             (gnu packages tree-sitter))

(define-public emacs-custom
  (package
    (inherit emacs)
    (name "emacs-custom")
    (inputs
     (modify-inputs (package-inputs emacs)
                    (prepend libgccjit)
                    (prepend tree-sitter)))
    (arguments
     (substitute-keyword-arguments (package-arguments emacs)
       ((#:configure-flags flags)
        `(cons* "--with-native-compilation"
                "--with-tree-sitter"
                ,flags))))
    (synopsis "Emacs with Tree-sitter and native compilation")
    (description "Customized Emacs with Tree-sitter and native compilation enabled.")))

emacs-custom
