let did_install_default_menus = 1

let g:EnableAirline = 1

"let g:solarized_contrast = "low"
"let g:solarized_contrast = "normal"
"let g:solarized_contrast = "high"
" Make diffs more visible (particularly whitespace diffs).
if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif
let g:solarized_diffmode = "high"
set background=dark
colorscheme solarized

let g:Powerline_colorscheme = "solarized256"
