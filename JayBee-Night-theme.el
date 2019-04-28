(deftheme JayBee-Night
  "Created 2019-04-28.")

(custom-theme-set-variables
 'JayBee-Night
 '(evil-mode t))

(custom-theme-set-faces
 'JayBee-Night
 '(cursor ((t (:background "#86E08F" :foreground "#000000"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Arial" :foundry "outline" :width normal :height 98 :weight normal :slant normal))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:weight bold :foreground "#708090"))))
 '(highlight ((t (:background "#1D383C"))))
 '(region ((t (:background "#657B83" :foreground "#1D383C"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((t (:background "#009686"))))
 '(font-lock-builtin-face ((t (:foreground "#cfbfad"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#31B72C"))))
 '(font-lock-comment-face ((t (:foreground "#31B72C"))))
 '(font-lock-constant-face ((t (:foreground "#85ecd7"))))
 '(font-lock-doc-face ((t (:foreground "#cd8b00"))))
 '(font-lock-function-name-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-keyword-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-negation-char-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#ade6b3"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#bcc1c5"))))
 '(font-lock-type-face ((t (:foreground "#ade6b3"))))
 '(font-lock-variable-name-face ((t (:foreground "#e1f4ff"))))
 '(font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000"))))
 '(button ((t (:inherit (link)))))
 '(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground "RoyalBlue3")) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:foreground "#cfbfad" :background "#1e1e27"))))
 '(header-line ((t (:inherit mode-line :background "#B59E7A" :foreground "#000000" :box nil))))
 '(tooltip ((t (:foreground "systeminfotext" :background "systeminfowindow" :inherit (variable-pitch)))))
 '(mode-line ((t (:background "#B59E7A" :foreground "black"))))
 '(mode-line-buffer-id ((t (:background "#B59E7A" :foreground "#000000" :weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:background "white" :foreground "black"))))
 '(isearch ((t (:weight bold :foreground "#303030" :background "#cd8b60"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
 '(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(powerline-active2 ((t (:inherit mode-line :background "#B59E7A" :foreground "black"))))
 '(powerline-active1 ((t (:inherit mode-line :background "#B59E7A" :foreground "black"))))
 '(powerline-inactive0 ((t (:inherit (mode-line-inactive)))))
 '(powerline-inactive1 ((t (:inherit mode-line-inactive :background "white"))))
 '(powerline-inactive2 ((t (:inherit mode-line-inactive :background "white"))))
 '(window-divider ((t (:foreground "gray60"))))
 '(window-divider-last-pixel ((t (:foreground "gray40"))))
 '(window-divider-first-pixel ((t (:foreground "gray80"))))
 '(buffer-menu-buffer ((t (:weight bold))))
 '(glyphless-char ((((type tty)) (:inherit (underline))) (((type pc)) (:inherit (escape-glyph))) (t (:height 0.6))))
 '(custom-link ((t (:inherit (link)))))
 '(mode-line-buffer-id-inactive ((t (:background "white" :foreground "black"))))
 '(evil-search-highlight-persist-highlight-face ((t (:inherit (lazy-highlight)))))
 '(evil-ex-substitute-matches ((t (:inherit (lazy-highlight)))))
 '(evil-ex-lazy-highlight ((t (:inherit (lazy-highlight)))))
 '(evil-ex-info ((((supports :slant)) (:foreground "red" :slant italic))))
 '(evil-ex-search ((t (:inherit (isearch)))))
 '(evil-ex-commands ((nil (:slant italic :underline (:color foreground-color :style line)))))
 '(evil-ex-substitute-replacement ((((supports :underline)) (:foreground "red" :underline (:color foreground-color :style line)))))
 '(spacemacs-visual-face ((t (:inherit (quote mode-line) :foreground "#B59E7A" :background "gray"))))
 '(company-tooltip ((t (:background "#0c141f" :foreground "white"))))
 '(company-preview ((((background light)) (:inherit (company-tooltip-selection company-tooltip))) (((background dark)) (:foreground "wheat" :background "blue4"))))
 '(company-echo ((t nil)))
 '(company-tooltip-annotation ((t (:foreground "#607d8b"))))
 '(company-echo-common ((((background dark)) (:foreground "firebrick1")) (((background light)) (:background "firebrick4"))))
 '(company-scrollbar-bg ((t (:background "#32424a"))))
 '(company-scrollbar-fg ((t (:background "white"))))
 '(company-preview-search ((((background light)) (:inherit (company-tooltip-common-selection))) (((background dark)) (:background "blue1" :inherit (company-preview)))))
 '(company-tooltip-common ((t (:foreground "#009686"))))
 '(default ((t (:inherit nil :stipple nil :background "#042327" :foreground "#bdb395" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Consolas"))))
 '(company-tooltip-selection ((t (:background "#425b67"))))
 '(company-tooltip-annotation-selection ((default (:inherit (company-tooltip-annotation)))))
 '(company-tooltip-common-selection ((default (:inherit (company-tooltip-common)))))
 '(helm-swoop-target-word-face ((t (:foreground "#ffffff" :background "#7700ff")))))

(provide-theme 'JayBee-Night)
