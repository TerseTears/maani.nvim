# :bosnia_herzegovina: Maani Neovim Colorscheme

![](https://user-images.githubusercontent.com/36173945/132120638-adad3a59-54eb-4a24-a6fd-62afbe5aef46.png)

A theme inspired by the three colors of the Bosnian flag, and :heart:. Focus has been:

* Using rather distinct and varied colors
* Brighter colors reserved for highlight groups requiring greater attention
* Avoiding red altogether (except for errors)
* Usefulness of highlighting hints
* Proper terminal colors
* Sensible colors with reduced display temperatures
* LSP support
* Only dark mode
* Neovim 0.5+ being a requirement

# :film_strip: Screenshots

![](https://user-images.githubusercontent.com/36173945/132120652-2e36a149-e6c7-479a-b804-8512d482bcf2.png)
![](https://user-images.githubusercontent.com/36173945/132120657-afdaf01c-6fb6-445f-bb3d-63c9351625d8.png)

# :vhs: Installation

The theme is made using the wonderful [lush.nvim](https://github.com/rktjmp/lush.nvim) plugin and requires it as dependency:

```vim
" using vim-plug
Plug 'rktjmp/lush.nvim'
Plug 'tersetears/maani.nvim'
```

Of course, to set it as default theme, add or modify below line in `init.nvim`:

```vim
colorscheme maani
```

# :construction: Plugin Support


These are the supported plugins

* [Lualine](https://github.com/hoob3rt/lualine.nvim)
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [Dashboard](https://github.com/glepnir/dashboard-nvim)
* [Trouble](https://github.com/folke/trouble.nvim)
* [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)


I also use the following plugins and haven't had issues with the default colors provided by their fallback highlighting groups:

- [Vim-Signify](https://github.com/mhinz/vim-signify)
- [Nvim-Tree](https://github.com/kyazdani42/nvim-tree.lua)
- [Nvim-Bufferline](https://github.com/akinsho/nvim-bufferline.lua)

Additionally, I want to keep terminal colors nice as well, since I use terminals inside of Neovim quite often:

![](https://user-images.githubusercontent.com/36173945/132120661-27391ef7-2642-4072-8804-0366cbf773c3.png)

 Tree-sitter support is also somewhat partial. I've only checked for troublesome fallback colors in various languages and have applied the necessary fixes. I believe the fallback colors, based on the defaults specified [here](https://github.com/nvim-treesitter/nvim-treesitter/blob/master/plugin/nvim-treesitter.vim) provide all the essential highlightings.

Nevertheless, if the colorscheme provides ugly colors for any plugins that you use, or any cli app, please do open an issue.

# :hammer: Making The Theme Better

If you find a part of the theme to not work as intended, or if you think part of it would benefit from different highlighting choices, please do open an issue. 

Of course, bear in mind that you can always extend the theme using `lush` and `lua` quite easily.

# A Lush Theme for Neovim.

See: http://git.io/lush.nvim for more information on Lush.
