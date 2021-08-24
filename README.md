# Maani Neovim Colorscheme

![](maani_logo.png)

A theme inspired by the three colors of the Bosnian flag. Focus has been:

* Using rather distinctive and varied colors
* Brighter colors reserved for highlight groups requiring greater attention (yellow, light blue)
* Avoiding red altogether (except for errors)
* Usefulness of highlighting hints
* Proper terminal colors
* Sensible colors even with reduced display temperatures
* Only dark mode
* No LSP groups highlighting (yet)
* Neovim 0.5+ being a requirement

# Screenshots

![](scr1.png)
![](scr2.png)

# Installation

The theme is made using the wonderful [lush.nvim](https://github.com/rktjmp/lush.nvim) plugin and requires it as dependency:

```vim
" using vim-plug
Plug 'rktjmp/lush.nvim'
Plug 'tersetears/maani.nvim'
```

Of course, to set it as default theme, add or modify below lines in `init.nvim`:

```vim
set background=dark
colorscheme maani
```

# Making The Theme Better

If you find a part of the theme to not work as intended, or if you think part of it would benefit from different highlighting choices, please do open an issue. 

If you require plugin support for sufficiently mature projects, please mention that as well, and I will try to include the necessary highlight groups. 

Of course, bear in mind that you can always extend the theme using `lush` and `lua` quite easily, or you can simply take inspirations from this project and write your own colorscheme. Nevertheless, if you think any changes to the present colorscheme will be beneficial, I'm open to suggestions and fixes.

# A Lush Theme for Neovim.

See: http://git.io/lush.nvim for more information on Lush.
