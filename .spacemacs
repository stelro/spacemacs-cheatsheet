;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' dligaturesisable the work with glfw lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     react
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup nil)
     better-defaults
     games
     git
     vimscript
     (wakatime :variables
               wakatime-api-key "5e89caa0-fa44-431c-b2e0-8ecf5474377c"
               ;; use the actual wakatime path
               wakatime-cli-path "/usr/bin/wakatime")
     (c-c++ :variables c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     (colors :variables
             colors-enable-rainbow-identifiers nil
             colors-enable-nyan-cat-progress-bar nil)
     dash
     deft
     emacs-lisp
     github
     imenu-list
     (org :variables org-projectile-file "~/Org/todos.org")
     markdown
     shaders
     (ranger :variables
             ranger-cleanup-on-disable t
             ranger-show-preview t)
     search-engine
     semantic
     shell
     ;; spell-checking
     (syntax-checking :variables syntax-checking-enable-by-default nil)
     swift
     lua
     cscope
     version-control
     gtags
     react
     shaders
     haskell
     helm
     javascript
     ;; (javascript :variables
     ;;             tern-command '("node" "/usr/bin/tern")
     ;;             js2-basic-offset 2
     ;;             js-indent-level 2
     ;;             js2-strict-missing-semi-warning nil
     ;;             javascript-disable-tern-port-files nil
     ;;             js2-missing-semi-one-line-override nil)
     (html :variables
           css-indent-offset 2
           web-mode-markup-indent-offset 2
           web-mode-css-indent-offset 2
           web-mode-code-indent-offset 2
           web-mode-attr-indent-offset 2)
     ;;ycmd
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(beacon
                                      glsl-mode
                                      dotenv-mode
                                      smart-backspace
                                      ;;company-ycmd
                                      disaster
                                      all-the-icons
                                      speed-type
                                      rjsx-mode
                                      nodejs-repl
                                      less-css-mode
                                      scss-mode
                                      company-tern
                                      flycheck
                                      flycheck-package
                                      flycheck-flow
                                      add-node-modules-path
                                      doom-themes)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when downloading packages.
   ;; Possible values are `used', `used-but-keep-unused' and `all'. `used' will
   ;; download only explicitly used packages and remove any unused packages as
   ;; well as their dependencies. `used-but-keep-unused' will download only the
   ;; used packages but won't delete them if they become unused. `all' will
   ;; download all the packages regardless if they are used or not and packages
   ;; won't be deleted by Spacemacs. (default is `used')
   dotspacemacs-download-packages 'used))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set i
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of of
   ;; the form `(list-type . list-size)`. If nil it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(;; doom-spacegrey
                         ;; doom-city-lights
                         ;; doom-molokai
                         ;; doom-one
                         ;; badwolf
                         ;; StelsDevs
                         JayBee-Night
                         ;;  gruvbox
                         ;; zenburn
                         ;; dracula
                         ;; doom-peacock
                         ;; doom-spacegrey
                            spacemacs-dark
                            spacemacs-light
                         ;; solarized-light
                         ;; solarized-dark
                         ;; leuven
                         ;; monoka
                         ;; zenburn
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; SF Mono
   dotspacemacs-default-font '("Fira Code Medium"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 0.8)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default c-default-style "bsd")
  (setq-default c-basic-offset 2)
  (setq-default tab-width 2)

  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/themes/JayBee-Night-theme/")

  (load-file "~/.emacs.d/elpa/dash-20180910.1856/dash.el")
  ;; The following line is used for gruvbox theme
  ;; (load-file "~/.emacs.d/elpa/autothemer-20180920.923/autothemer.el")


  (setq-default
   js2-basic-offset 2
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2
   js-indent-level 2
   js2-strict-trailing-comma-warning nil
   )

  ;; Helper to add project-specific node_modules to the PATH
  (defun add-node-modules-path ()
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (path (and root
                      (expand-file-name "node_modules/.bin/" root))))
      (if root
          (progn
            (make-local-variable 'exec-path)
            (add-to-list 'exec-path path)
            (message "added node_modules to exec-path"))
        (message "node_modules not found"))))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; misc
  (ido-mode -1)

  (setq-default sp-escape-quotes-after-insert nil)
  (setq-default
   beacon-blink-when-focused t
   beacon-blink-when-point-moves-vertically 5)

  (setq-default helm-make-build-dir "build")

  (eval-after-load 'web-mode
    '(progn
       (add-hook 'web-mode-hook #'add-node-modules-path)))

  (setq prettier-js-command "prettier-eslint_d")

  (setq neo-theme 'icons)

  (global-company-mode t)

  (require 'disaster)

  ;; set powerline otions
  (setq powerline-default-separator 'arrow)


  ;; stop default linter - use ESLint linter as part of FlyCheck
  (setq js2-mode-show-parse-errors nil js2-mode-show-strict-warnings nil)
  (eval-after-load 'js2-mode
    '(add-hook 'js2-mode-hook #'add-node-modules-path))

  (setq undo-tree-auto-save-history t
        undo-tree-history-directory-alist
        `(("." . ,(concat spacemacs-cache-directory "undo"))))
  (unless (file-exists-p (concat spacemacs-cache-directory "undo"))
    (make-directory (concat spacemacs-cache-directory "undo")))
  (when (spacemacs/system-is-linux)
    (setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "google-chrome-stable"))
  (setq vc-follow-symlinks t)
  (setq ad-redefinition-action 'accept)
  (evil-ex-define-cmd "W[rite]" 'evil-write)

  ;; org-mode configuration
  (setq org-agenda-files
        (append '("~/Org/hsph.org"
                  "~/Org/meetings.org"
                  "~/Org/tickler.org"
                  "~/Org/social.org"
                  "~/Org/todos.org"
                  "~/Org/inbox.org")
                (file-expand-wildcards "~/Org/projects/*/*.org")
                (file-expand-wildcards "~/Org/software/*/*.org")
                (file-expand-wildcards "~/cache/hsph/*/org/*.org")))
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-skip-deadline-if-done t)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "WAITING(w)" "SOMEDAY(.)" "|" "DONE(x!)" "CANCELLED(c@)")
          (sequence "NEXT(n)" "|" "DONE(x!)" "CANCELLED(c@)")
          (sequence "MEET(m)" "|" "COMPLETE(x)")
          (sequence "TALK(T)")
          (sequence "BUG(b)" "|" "FIXED(f)")
          (sequence "READ(r)" "|" "DONE(x!)")
          (sequence "TODELEGATE(-)" "DELEGATED(d)" "COMPLETE(x)")))
  (setq org-stuck-projects '("+@project/-MAYBE-DONE" ("NEXT" "WAITING" "DELEGATED")))
  (setq org-tags-exclude-from-inheritance '("@project"))

  ;; act as a day planner
  (setq org-agenda-start-on-weekday nil)

  ;; stuff for GTD
  (setq org-agenda-custom-commands
        '(("W" "Weekly Review"
           ((agenda "" ((org-agenda-span 7)
                        (org-agenda-start-day "-7d")
                        (org-agenda-entry-types '(:timestamp))
                        (org-agenda-show-log t)))
            (stuck "")
            (todo "TODO")  ;; review what is next
            (todo "DELEGATED|WAITING") ;; projects we are waiting on
            (tags "PROJECT") ;; review all projects
            (tags "SOMEDAY"))) ;; review someday/maybe items

          ("D" "Daily review"
           ((agenda "" ((org-agenda-span 7)))
            (stuck "")
            (todo "NEXT")
            (todo "DELEGATED|WAITING") ;; projects we are waiting on
            (tags "@inbox")
            (tags "@errand/-DONE-CANCELLED")
            (tags "-@inbox-@errand-SCHEDULED={.+}/!+NEXT")))))

  (defun org-archive-done-tasks ()
    (interactive)
    (org-map-entries
     (lambda ()
       (org-archive-subtree)
       (setq org-map-continue-from (outline-previous-heading)))
     "/DONE" 'tree))

  (defun org-archive-cancelled-tasks ()
    (interactive)
    (org-map-entries
     (lambda ()
       (org-archive-subtree)
       (setq org-map-continue-from (outline-previous-heading)))
     "/CANCELLED" 'tree))

  (defun org-archive-completed-tasks ()
    (interactive)
    (org-archive-done-tasks)
    (org-archive-cancelled-tasks)
    )

  (setq org-refile-targets '((nil :maxlevel . 1)
                             (org-agenda-files :maxlevel . 1)))

  (setq org-capture-templates '(("t" "Todo [inbox]" entry
                                 (file+headline "~/Documents/Org/inbox.org" "Tasks")
                                 "* TODO %i%?")
                                ("T" "Tickler" entry
                                 (file+headline "~/Documents/Org/tickler.org" "Tickler")
                                 "* %i%? \n %U")))

  (setq org-icalendar-combined-agenda-file "~/Dropbox/Public/hsph.ics")
  (setq org-icalendar-alarm-time 60)
  (setq org-agenda-default-appointment-duration 60)


  (beacon-mode 1)

  (eval-after-load 'js2-mode
    '(add-hook 'js2-mode-hook #'add-node-modules-path))
  (setq flycheck-display-errors-function 'flycheck-display-error-messages-unless-error-list)
  (setq frame-title-format
        (concat "%b - emacs@" (system-name)))
  (setq neo-theme 'icons)
  (with-eval-after-load 'rjsx-mode
    (add-hook 'rjsx-mode-hook 'flycheck-mode)
    (with-eval-after-load 'flycheck
      (require 'flycheck-flow)
      (flycheck-add-mode 'javascript-flow 'rjsx-mode))
    (evil-define-key 'normal rjsx-mode-map (kbd "C-d") 'rjsx-delete-creates-full-tag))

  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

  ;; ycmd
  ;; (cond
  ;;  ((spacemacs/system-is-linux)
  ;;   (set-variable 'ycmd-server-command '("python2" "/home/stel/ycmd/ycmd")))
  ;;  ((spacemacs/system-is-mac)
  ;;   (set-variable 'ycmd-server-command '("python3" "~//github/ycmd/ycmd"))))
  ;; (setq ycmd-request-message-level -1)
  ;; (set-variable 'ycmd-global-config "/home/stel/.ycm_extra_conf.py")


  ;;auto-completion
  (setq company-idle-delay 0)
  (setq ac-delay 0)

  ;; rjsx
  (add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\.react.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\index.android.js\\'" . rjsx-mode))
  (add-to-list 'auto-mode-alist '("\\index.ios.js\\'" . rjsx-mode))
  (add-to-list 'magic-mode-alist '("/\\*\\* @jsx React\\.DOM \\*/" . rjsx-mode))
  (add-to-list 'magic-mode-alist '("^import React" . rjsx-mode))


  ;;c-c++
  (add-hook 'c++-mode-hook (lambda ()
                             (setq flycheck-checker 'c/c++-clang)
                             (setq flycheck-gcc-language-standard "c++17")
                             (setq flycheck-clang-language-standard "c++17")))

  (defun c-c++/init-clang-format()
    (use-package clang-format
      :if c-c++-enable-clang-support))

  (defun c-c++/init-cmake-mode()
    (use-package cmake-mode
      :mode (("CMakeLists\\.txt\\'" . cmake-mode) ("\\.cmake\\'" . cmake-mode))
      :init (push 'company-cmake company-backends-cmake-mode)))

  (defun c-c++/post-init-company ()
    (spacemacs|add-company-hook c-mode-common)
    (spacemacs|add-company-hook cmake-mode)

    (when c-c++-enable-clang-support
      (push 'company-clang company-backends-c-mode-common)

      (defun company-mode/more-than-prefix-guesser ()
        (c-c++/load-clang-args)
        (company-clang-guess-prefix))

      (setq company-clang-prefix-guesser ' company-mode/more-than-prefix-guesser)))

  (when (configuration-layer/layer-usedp 'auto-completion)
    (defun c-c++/init-company-c-headers()
      (use-package compnay-c-headers
        :if (configuration-layer/package-usedp 'company)
        :defer t
        :init (push 'company-c-headers company-backends-c-mode-common))))

  (defun c-c++/post-init-flycheck()
    (dolist (mode '(c-mode c++-mode))
      (spacemacs/add-flycheck-hook mode))
    (when c-c++-enable-clang-support
      (spacemacs/add-to-hooks 'c-c++/load-clang-args '(c-mode-hook c++-mode-hook))))

  (add-hook 'c++-mode-hook
            (lambda ()
              ;; quick compilation
              (set (make-local-variable 'compile-command)
                   (concat "g++ -std=c++1z -Wall -lpthread " buffer-file-name " && ./a.out"))
              ;; (push 'company-semantic company-backends)
              ;;(setq company-clang-arguments '("-std=c++1z"))
              ;;(setq flycheck-clang-language-standard "c++1z")
              (add-to-list 'company-c-headers-path-system
                           "/usr/include/c++/8.2.1/")
              ))

  (add-hook 'c-mode-common-hook
            (lambda ()
              (defun stels-header-format ()
                "Format the given file as a header file."
                (interactive)
                (setq BaseFileName (file-name-sans-extension (file-name-nondirectory buffer-file-name)))
                (setq BaseFileNameExt (file-name-nondirectory buffer-file-name))
                (insert "#if !defined(")
                (push-mark)
                (insert BaseFileName)
                (upcase-region (mark) (point))
                (pop-mark)
                (insert "_H)\n")
                (insert "/* ========================================================================\n")
                (insert (format "   $File: %s $\n" BaseFileNameExt))
                (insert (format "   $Date: %s $\n" (current-time-string)))
                (insert "   $Revision: $\n")
                (insert "   $Creator: Ro Stelmach $\n")
                (insert "   $Notice: (C) Copyright 2019 by Ro Orestis Stelmach. All Rights Reserved. $\n")
                (insert "   ======================================================================== */\n")
                (insert "\n")
                (insert "#define ")
                (push-mark)
                (insert BaseFileName)
                (upcase-region (mark) (point))
                (pop-mark)
                (insert "_H\n")
                (insert "#endif")
                )

              (defun stels-source-format ()
                "Format the given file as a source file."
                (interactive)
                (setq BaseFileName (file-name-sans-extension (file-name-nondirectory buffer-file-name)))
                (setq BaseFileNameExt (file-name-nondirectory buffer-file-name))
                (insert "/* ========================================================================\n")
                (insert (format "   $File: %s $\n" BaseFileNameExt))
                (insert (format "   $Date: %s $\n" (current-time-string)))
                (insert "   $Revision: $\n")
                (insert "   $Creator: Ro Stelmach $\n")
                (insert "   $Notice: (C) Copyright 2019 by Ro Orestis Stelmach. All Rights Reserved. $\n")
                (insert "   ======================================================================== */\n")
                )

              (cond ((file-exists-p buffer-file-name) t)
                    ((string-match "[.]h" buffer-file-name) (stels-header-format))
                    ((string-match "[.]hh" buffer-file-name) (stels-header-format))
                    ((string-match "[.]hpp" buffer-file-name) (stels-header-format))
                    ((string-match "[.]c" buffer-file-name) (stels-source-format))
                    ((string-match "[.]cc" buffer-file-name) (stels-source-format))
                    ((string-match "[.]cpp" buffer-file-name) (stels-source-format))
                    )
              ))


  (global-set-key [C-M-tab] 'clang-format-region)
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))
  ;; '(safe-local-variable-values (quote ((TeX-command-extra-options . "-shell-escape")))))

  (setq-default helm-make-build-dir "build")
  (put 'helm-make-build-dir 'safe-local-variable 'stringp)


  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("2f4e31499b746df41ff6b56a0b49adf92ae5e86cd1d8f09ba75cc5480d191b73" "480c490e8e02114ad24322edf1bdac07206a138562d0d1fd552a6897886710b7" "9613de86347481d1ed580c4a42c545787cf28a3955f1bc2e01417c43dc5aa37b" "3576f527258335b6f04e307b9205fbf2e5fac3fd17dae23d680b1fa00f666634" "6d2e9b5da4d8187bd93a6afc0c8cc31aac08545ac2d05ba85b8bb1baa09b7904" "aede58d00949f011cf7b0a847c342325ff0ab45a67e46bb7f93b53846d331845" "6ab43b62e3ebe284d65cdad7d3e200d1cc51b0d663baf4b3795dd18799e83bdc" "f23ab6d9f457b962b2d6f64e62263665f8098709f26c1f3e0ba94240ec503521" "c372798bb70eb1bb0e1853426af19ba7bb0adeebace94c83b2d4f5f87c6ea528" "07f99a5f95b69e28a1315f004b62dd341d08d3f528e9750d90af2a9789418601" "c46919ae506f570a2dc07bdbd7b17076639a054d8962bcc720bb7dd157c754b7" "b3053b7a82c2769ab1d44e7f2eab6bcef592ea14708b18a5579fef89c72c9077" default)))
 '(evil-mode t)
 '(package-selected-packages
   (quote
    (JonathanBlow-theme add-node-modules-path package-lint dotenv-mode prettier-js skewer-mode json-snatcher json-reformat multiple-cursors js2-mode tern doom-losvkem-theme gruvbox-theme-theme intero hlint-refactor hindent helm-hoogle haskell-snippets flycheck-haskell company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode company-glsl treepy graphql all-the-icons memoize glsl-mode doom-city-lights-theme let-alist doom-themes wakatime-mode beacon seq flycheck-ycmd company-ycmd ycmd request-deferred deferred org-category-capture alert log4e gntp dash-functional haml-mode markdown-mode gitignore-mode flyspell-correct flycheck magit magit-popup git-commit ghub with-editor simple-httpd web-completion-data pos-tip company yasnippet auto-complete mmt xcscope zeal-at-point yapfify unfill swift-mode stickyfunc-enhance srefactor reveal-in-osx-finder ranger pyvenv pytest pyenv-mode py-isort pip-requirements pbcopy osx-trash osx-dictionary org-ref pdf-tools key-chord ivy tablist mwim magit-gh-pulls live-py-mode launchctl hy-mode helm-pydoc helm-dash helm-bibtex parsebib gmail-message-mode ham-mode html-to-markdown github-search github-clone github-browse-file git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht flymd erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks engine-mode elfeed-web elfeed-org elfeed-goodies ace-jump-mode noflet elfeed edit-server diff-hl deft cython-mode company-auctex company-anaconda biblio biblio-core auctex anaconda-mode pythonic zenburn-theme zen-and-art-theme xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme typit twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme speed-type spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle smart-backspace slim-mode shell-pop seti-theme scss-mode sass-mode rjsx-mode reverse-theme restart-emacs rebecca-theme rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme quickrun purple-haze-theme pug-mode professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el paradox pacmacs orgit organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme nodejs-repl noctilux-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lua-mode lorem-ipsum livid-mode linum-relative link-hint light-soap-theme less-css-mode kibit-helper json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme inkpot-theme indent-guide imenu-list hungry-delete htmlize hl-todo hl-sexp highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-cscope helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md ggtags gandalf-theme fuzzy flyspell-correct-helm flycheck-pos-tip flycheck-package flycheck-flow flx-ido flatui-theme flatland-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme disaster diminish define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cyberpunk-theme company-web company-tern company-statistics company-quickhelp company-c-headers column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmake-mode clues-theme clean-aindent-mode clang-format cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell 2048-game)))
 '(powerline-display-hud t))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((((min-colors 16777216)) (:background "#282828" :foreground "#f8f8f2")) (t (:background "#000000" :foreground "#f8f8f2")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
