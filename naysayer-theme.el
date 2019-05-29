;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; *****************************************************************************
;;
;; naysayer :- Description
;;
;; *****************************************************************************

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme naysayer "Description")

;; Monokai colors
(defcustom monokai-yellow "#E6DB74" "Primary colors - yellow" :type 'string :group 'monokai)
(defcustom monokai-orange "#FD971F" "Primary colors - orange" :type 'string :group 'monokai)
(defcustom monokai-red "#F92672" "Primary colors - red" :type 'string :group 'monokai)
(defcustom monokai-magenta "#FD5FF0" "Primary colors - magenta" :type 'string :group 'monokai)
(defcustom monokai-blue "#66D9EF" "Primary colors - blue" :type 'string :group 'monokai)
(defcustom monokai-green "#A6E22E" "Primary colors - green" :type 'string :group 'monokai)
(defcustom monokai-cyan "#A1EFE4" "Primary colors - cyan" :type 'string :group 'monokai)
(defcustom monokai-violet "#AE81FF" "Primary colors - violet" :type 'string :group 'monokai)

(custom-theme-set-variables
 'naysayer
 '(linum-format " %5i "))

(let ((background "#082628")
      (gutters    "#082628")
      (gutter-fg  "#082628")
      (gutters-active "#082628")
      (builtin      "#ffffff")
      (selection  "#0000ff")
      (text       "#d2b58d")
      (comments   "#67cd5d")
      (punctuation "#86E08F")
      (keywords "#ffffff")
      (variables "#d4d4d4")
      (functions "#d4d4d4")
      (methods    "#d4d4d4")
      (strings    "#2ec09c")
      (constants "#8fe1c8")
      (macros "#86E08F")
      (white     "#ffffff")
      (error "#ff0000")
      (warning "#ffaa00")
      (highlight-line "#0b3335")
      (line-fg "#126367"))

  (custom-theme-set-faces
   'naysayer

   ;; Default colors
   ;; *****************************************************************************

   `(default                          ((t (:foreground ,text :background ,background, :weight normal))))
   `(region                           ((t (:foreground nil :background ,selection))))
   `(cursor                           ((t (:background ,white                        ))))
   `(fringe                           ((t (:background ,background   :foreground ,white))))
   `(linum                            ((t (:background ,background :foreground ,gutter-fg))))
   `(mode-line                        ((t (:foreground ,white :background ,gutters-active  ))))
   `(mode-line-inactive               ((t (:foreground ,gutter-fg :background ,gutters  ))))
   `(highlight ((t (:foreground nil :background ,selection))))

   ;; Font lock faces
   ;; *****************************************************************************

   `(font-lock-keyword-face           ((t (:foreground ,keywords, :weight normal))))
   `(font-lock-type-face              ((t (:foreground ,punctuation))))
   `(font-lock-constant-face          ((t (:foreground ,constants))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables))))
   `(font-lock-builtin-face           ((t (:foreground ,builtin))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-comment-face           ((t (:foreground ,comments))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comments))))
   `(font-lock-function-name-face     ((t (:foreground ,functions))))
   `(font-lock-doc-string-face        ((t (:foreground ,strings))))
   `(font-lock-preprocessor-face      ((t (:foreground ,macros))))

   ;; Plugins
   ;; *****************************************************************************
   `(trailing-whitespace ((t (:foreground nil :background ,warning))))
   `(whitespace-trailing ((t (:background nil :foreground ,warning :inverse-video t))))

   `(linum ((t (:foreground ,line-fg :background ,background))))
   `(linum-relative-current-face ((t (:foreground ,line-fg :background ,background))))
   `(line-number ((t (:foreground ,line-fg :background ,background))))
   `(line-number-current-line ((t (:foreground ,white :background ,background))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,highlight-line))))
   `(hl-line-face ((t (:background ,highlight-line))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,monokai-violet))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,monokai-blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,monokai-green))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,monokai-yellow))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,monokai-orange))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,monokai-red))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,monokai-violet))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,monokai-blue))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,monokai-green))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,monokai-yellow))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,monokai-orange))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,monokai-red))))

   ;; mode-line and powerline
   `(mode-line-buffer-id ((t (:foreground ,background :weight bold))))
   `(mode-line ((t (:inverse-video unspecified
                                   :underline unspecified
                                   :foreground ,background
                                   :background ,text
                                   :box (:line-width 1 :color ,text :style unspecified)))))
   `(powerline-active1 ((t (:background ,text :foreground ,background))))
   `(powerline-active2 ((t (:background ,text :foreground ,background))))

   `(mode-line-inactive ((t (:inverse-video unspecified
                                            :underline unspecified
                                            :foreground ,text
                                            :background ,background
                                            :box (:line-width 1 :color ,background :style unspecified)))))
   `(powerline-inactive1 ((t (:background ,background :foreground ,text))))
   `(powerline-inactive2 ((t (:background ,background :foreground ,text))))

   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; *****************************************************************************

(provide-theme 'naysayer)

;; Local Variables:
;; no-byte-compile: t
;; End:
