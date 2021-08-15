-- main file where colors are set

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
    return {

        Comment      { fg=hsl('#5F9EA0').darken(25).desaturate(50), gui="italic" }, -- any comment
        ColorColumn  { bg=hsl('#5F9EA0').darken(50) }, -- used for the columns set with 'colorcolumn'
        Conceal      { fg=hsl('#FFFFFF'), bg=hsl('#5F9EA0').darken(75) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        -- Cursor       { }, -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   { ColorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory    { fg=hsl('#1E90FF') }, -- directory names (and other special names in listings)
        DiffAdd      { fg=hsl('#8FBC8F') }, -- diff mode: Added line |diff.txt|
        DiffChange   { fg=hsl('#FFA500') }, -- diff mode: Changed line |diff.txt|
        DiffDelete   { fg=hsl('#FF4500')}, -- diff mode: Deleted line |diff.txt|
        -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer  { fg=hsl('#000000')}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { bg= hsl('#32CD32') }, -- cursor in a focused terminal
        -- TermCursorNC { Cursor }, -- cursor in an unfocused terminal
        ErrorMsg     { fg=hsl('#FFFFFF'), bg=hsl('#B22222') }, -- error messages on the command line
        VertSplit    { fg=hsl('#708090') }, -- the column separating vertically split windows
        Folded       { fg=hsl('#C0C0C0'), gui="bold" }, -- line used for closed folds
        FoldColumn   { fg=Folded.fg, bg= hsl('#5F9EA0').darken(75) }, -- 'foldcolumn'
        SignColumn   { FoldColumn }, -- column where |signs| are displayed
        -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr       { fg=hsl('#708090') }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { fg=hsl('#C0C0C0') }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen   { bg=hsl('#FFA500') }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea      { gui="italic" }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal       { fg = hsl('#FFFFFF'), bg= hsl('#5F9EA0').darken(75) }, -- normal text
        -- NormalFloat  { }, -- Normal text in floating windows.
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu        { fg=hsl('#FFFFFF'), bg=hsl('#5F9EA0').darken(50) }, -- Popup menu: normal item.
        PmenuSel     { fg=hsl('#5F9EA0').darken(50), bg=hsl('#FFFFFF') }, -- Popup menu: selected item.
        -- PmenuSbar    { }, -- Popup menu: scrollbar.
        -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
        -- Question     { }, -- |hit-enter| prompt and yes/no questions
        -- QuickFixLine { }, -- current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search       { fg=hsl('#FF8C00'), bg=hsl('#FFD700'), gui="bolditalic" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine   { fg=hsl('#C0C0C0'), gui="underlineitalicbold" }, -- status line of current window
        StatusLineNC { fg=hsl('#708090'), gui="underlineitalic" }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine      { Normal, gui="italic" }, -- tab pages line, not active tab page label
        TabLineFill  { }, -- tab pages line, where there are no labels
        TabLineSel   { StatusLineNC }, -- tab pages line, active tab page label
        Title        { fg=hsl('#FF00FF').lighten(50) }, -- titles for output from ":set all", ":autocmd" etc.
        Visual       { bg=hsl('#3CB371') }, -- Visual mode selection
        -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
        -- WarningMsg   { }, -- warning messages
        -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu     { }, -- current match in 'wildmenu' completion

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.

        Constant       { fg=hsl('#32CD32') }, -- (preferred) any constant
        String         { fg=hsl('#98FB98') }, --   a string constant: "this is a string"
        Character      { String }, --  a character constant: 'c', '\n'
        Number         { fg=hsl('#00FF00')}, --   a number constant: 234, 0xff
        Boolean        { fg=hsl('#FF69B4') }, --  a boolean constant: TRUE, false
        Float          { Number }, --    a floating point constant: 2.3e10

        Identifier     { fg=hsl('#00BFFF') }, -- (preferred) any variable name
        Function       { fg=hsl('#4169E1').lighten(25), gui="bold" }, -- function name (also: methods for classes)

        Statement      { fg=hsl('#FFFF00'), gui="bold" }, -- (preferred) any statement
        Conditional    { fg=hsl('#FF1493').lighten(25), gui="italic" }, --  if, then, else, endif, switch, etc.
        Repeat         { Conditional }, --   for, do, while, etc.
            Label          { Statement }, --    case, default, etc.
            Operator       { Statement }, -- "sizeof", "+", "*", etc.
            Keyword        { Statement }, --  any other keyword
            Exception      { Conditional }, --  try, catch, throw

            PreProc        { fg=hsl('#7B68EE').lighten(50) }, -- (preferred) generic Preprocessor
            -- Include        { }, --  preprocessor #include
            -- Define         { }, --   preprocessor #define
            -- Macro          { }, --    same as Define
            -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

            Type           { fg=hsl('#7B68EE').lighten(50) }, -- (preferred) int, long, char, etc.
            -- StorageClass   { }, -- static, register, volatile, etc.
            -- Structure      { }, --  struct, union, enum, etc.
            -- Typedef        { }, --  A typedef

            Special        { fg=hsl('#6495ED').mix(hsl('#87CEFA'), 50), gui="bold" }, -- (preferred) any special symbol
            -- SpecialChar    { }, --  special character in a constant
            -- Tag            { }, --    you can use CTRL-] on this
            -- Delimiter      { }, --  character that needs attention
            -- SpecialComment { }, -- special things inside a comment
            -- Debug          { }, --    debugging statements

            -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
            -- Bold       { gui = "bold" },
            -- Italic     { gui = "italic" },

            -- ("Ignore", below, may be invisible...)
            -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

            Error          { fg=hsl('#FFFFFF'), bg=hsl('#B22222'), gui='bold' }, -- (preferred) any erroneous construct

            Todo           { fg=hsl('#FFFFFF'), bg=hsl('#FF8C00') }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        }
    end)

    return theme
