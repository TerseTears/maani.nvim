-- main file where colors are set

local lush = require('lush')
local hsl = lush.hsl

-- define main colors

local lightskyblue = hsl('#87CEFA')
local deepskyblue = hsl('#00BFFF')
local cornflowerblue = hsl('#6495ED')
local dodgerblue = hsl('#1E90FF')
local royalblue = hsl('#4169E1')
local mediumslateblue = hsl('#7B68EE')
local white = hsl('#FFFFFF')
local silver = hsl('#C0C0C0')
local slategray = hsl('#708090')
local cadetblue = hsl('#5F9EA0')
local yellow = hsl('#FFFF00')
local gold = hsl('#FFD700')
local orange = hsl('#FFA500')
local darkorange = hsl('#FF8C00')
local hotpink = hsl('#FF69B4')
local magenta = hsl('#FF00FF')
local deeppink = hsl('#FF1493')
local orangered = hsl('#FF4500')
local firebrick = hsl('#B22222')
local lime = hsl('#00FF00')
local limegreen = hsl('#32CD32')
local darkseagreen = hsl('#8FBC8F')
local mediumseagreen = hsl('#3CB371')
local palegreen = hsl('#98FB98')
local black = hsl('#000000')

-- set neovim terminal colors

vim.g.terminal_color_0 = cadetblue.darken(75).hex
vim.g.terminal_color_3 = gold.hex
vim.g.terminal_color_11 = yellow.hex
vim.g.terminal_color_12 = dodgerblue.hex
vim.g.terminal_color_13 = hotpink.hex
vim.g.terminal_color_14 = lightskyblue.hex

--- filetype colors

vim.g.terminal_color_1 = firebrick.saturate(100).lighten(25).hex
vim.g.terminal_color_2 = limegreen.hex
vim.g.terminal_color_5 = deeppink.hex
vim.g.terminal_color_6 = deepskyblue.hex

--- directory and prompt

vim.g.terminal_color_4 = royalblue.hex
vim.g.terminal_color_7 = silver.hex
vim.g.terminal_color_8 = slategray.hex
vim.g.terminal_color_9 = orangered.hex
vim.g.terminal_color_10 = lime.hex
vim.g.terminal_color_15 = white.hex

-- set main theme

local theme = lush(function()
    return {

        Normal       { fg=white, bg=mediumslateblue.darken(75).desaturate(75) }, -- normal text

        Comment      { fg=cadetblue }, -- any comment

        VertSplit    { fg=Comment.fg.darken(25) }, -- the column separating vertically split windows
        StatusLineNC { Comment, fg=Comment.fg.darken(25), gui="underline" }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        StatusLine   { Comment, fg=Comment.fg.saturate(25), gui="underlinebold" }, -- status line of current window

        LineNr       { StatusLineNC, gui="nocombine" }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr { StatusLine, gui="nocombine" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

        TabLine      { StatusLineNC, gui="italic" }, -- tab pages line, not active tab page label
        TabLineFill  { Normal }, -- tab pages line, where there are no labels
        TabLineSel   { StatusLine, gui="italicunderline" }, -- tab pages line, active tab page label

        ColorColumn  { bg=deepskyblue.darken(75) }, -- used for the columns set with ''
        CursorColumn { ColorColumn }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine   { ColorColumn }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.

        Folded       { fg=silver, gui="bold" }, -- line used for closed folds
        FoldColumn   { Normal, fg=Folded.fg }, -- 'foldcolumn'
        SignColumn   { FoldColumn }, -- column where |signs| are displayed

        Pmenu        { fg=white, bg=cadetblue.darken(50) }, -- Popup menu: normal item.
        PmenuSel     { fg=Pmenu.bg, bg=Pmenu.fg }, -- Popup menu: selected item.
        -- PmenuSbar    { }, -- Popup menu: scrollbar.
        -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.

        Conceal      { Normal }, -- placeholder characters substituted for concealed text (see 'conceallevel')

        Directory    { fg=royalblue.saturate(100).lighten(25) }, -- directory names (and other special names in listings)

        DiffAdd      { fg=black, bg=limegreen }, -- diff mode: Added line |diff.txt|
        DiffChange   { fg=black, bg=darkorange }, -- diff mode: Changed line |diff.txt|
        DiffDelete   { fg=black, bg=orangered }, -- diff mode: Deleted line |diff.txt|
        -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|

        Title        { fg=deepskyblue.saturate(100).lighten(25) }, -- titles for output from ":set all", ":autocmd" etc.
        Visual       { bg=mediumseagreen.darken(50) }, -- Visual mode selection
        -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".

        MatchParen   { fg=white, bg=darkorange, gui='underline' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

        MsgArea      { gui="italic" }, -- Area for messages and cmdline
        MoreMsg      { fg=slategray }, -- |more-prompt|
        Question     { MoreMsg, gui="nocombine" }, -- |hit-enter| prompt and yes/no questions
        ErrorMsg     { fg=white, bg=firebrick, gui='boldunderline' }, -- error messages on the command line
        WarningMsg   { ErrorMsg }, -- warning messages
        -- WildMenu     { }, -- current match in 'wildmenu' completion

        NonText      { fg=gold.saturate(100) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        EndOfBuffer  { fg=mediumslateblue }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'

        Search       { fg=black, bg=orange, gui="italicboldunderline" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        -- QuickFixLine { }, -- current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

        -- Cursor       { }, -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        -- TermCursor   { }, -- cursor in a focused terminal
        -- TermCursorNC { Cursor }, -- cursor in an unfocused terminal

        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'

        -- NormalFloat  { }, -- Normal text in floating windows.
        -- NormalNC     { }, -- normal text in non-current windows

        SpecialKey   { fg=magenta.desaturate(25).lighten(25) }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.

        Constant       { fg=darkseagreen }, -- (preferred) any constant
        String         { fg=palegreen }, --   a string constant: "this is a string"
        Character      { String }, --  a character constant: 'c', '\n'
        Number         { fg=lime }, --   a number constant: 234, 0xff
        Boolean        { fg=hotpink }, --  a boolean constant: TRUE, false
        Float          { Number }, --    a floating point constant: 2.3e10

        Identifier     { fg=lightskyblue }, -- (preferred) any variable name
        Function       { fg=dodgerblue.lighten(25), gui="bold" }, -- function name (also: methods for classes)

        Statement      { fg=yellow, gui="bold" }, -- (preferred) any statement
        Conditional    { fg=deeppink.lighten(25), gui="italic" }, --  if, then, else, endif, switch, etc.
        Repeat         { Conditional }, --   for, do, while, etc.
            Label          { Statement }, --    case, default, etc.
            Operator       { Statement }, -- "sizeof", "+", "*", etc.
            Keyword        { Statement }, --  any other keyword
            Exception      { Conditional }, --  try, catch, throw

            PreProc        { fg=cornflowerblue }, -- (preferred) generic Preprocessor
            -- Include        { }, --  preprocessor #include
            -- Define         { }, --   preprocessor #define
            -- Macro          { }, --    same as Define
            -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

            Type           { PreProc }, -- (preferred) int, long, char, etc.
            -- StorageClass   { }, -- static, register, volatile, etc.
            -- Structure      { }, --  struct, union, enum, etc.
            -- Typedef        { }, --  A typedef

            Special        { fg=hsl('#778899').lighten(25), gui="bold" }, -- (preferred) any special symbol
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

            Error          { fg=white, bg=firebrick, gui='boldunderline' }, -- (preferred) any erroneous construct

            Todo           { fg=white, bg=darkorange.saturate(100), gui='boldunderline' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

            -- LSP

            DiagnosticError               { fg=orangered.desaturate(25) }, -- Used for "Error" signs in sign column
            DiagnosticWarn             { fg=orange }, -- Used for "Warning" signs in sign column
            DiagnosticHint                { fg=mediumseagreen }, -- Used for "Information" signs in sign column
            DiagnosticInfo         { fg=lightskyblue }, -- Used for "Hint" signs in sign column

            DiagnosticSignError          { DiagnosticError }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            DiagnosticSignWarn        { DiagnosticWarn }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            DiagnosticSignHint           { DiagnosticHint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
            DiagnosticSignInfo    { DiagnosticInfo }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

            DiagnosticVirtualTextError       { fg=DiagnosticError.fg.lighten(25), gui='bold' }, -- Used for "Error" diagnostic virtual text
            DiagnosticVirtualTextWarn     { fg=DiagnosticWarn.fg.lighten(50), gui='bold' }, -- Used for "Warning" diagnostic virtual text
            DiagnosticVirtualTextHint        { fg=DiagnosticHint.fg.lighten(50) }, -- Used for "Hint" diagnostic virtual text
            DiagnosticVirtualTextInfo { fg=DiagnosticInfo.fg.lighten(50) }, -- Used for "Information" diagnostic virtual text

            DiagnosticUnderlineError         { gui='underline' }, -- Used to underline "Error" diagnostics
            DiagnosticUnderlineWarn       { gui='underline' }, -- Used to underline "Warning" diagnostics
            DiagnosticUnderlineHint          { gui='underline' }, -- Used to underline "Hint" diagnostics
            DiagnosticUnderlineInfo   { gui='underline' }, -- Used to underline "Information" diagnostics

            DiagnosticFloatingError          { DiagnosticVirtualTextError }, -- Used to color "Error" diagnostic messages in diagnostics float
            DiagnosticFloatingWarn        { DiagnosticVirtualTextWarn }, -- Used to color "Warning" diagnostic messages in diagnostics float
            DiagnosticFloatingHint           { DiagnosticVirtualTextHint }, -- Used to color "Hint" diagnostic messages in diagnostics float
            DiagnosticFloatingInfo    { DiagnosticVirtualTextInfo }, -- Used to color "Information" diagnostic messages in diagnostics float

            -- Treesitter
            TSKeyword { Conditional },
            TSKeywordFunction { PreProc },
            TSFuncBuiltin { PreProc },
            TSField { fg=deepskyblue },

            -- Telescope highlighting (borders are ugly with default)
            TelescopeNormal { Constant },
            TelescopeMatching { Special },
            TelescopePromptBorder { NonText, gui="nocombine" },
            TelescopeSelection { Number }, 
            -- TelescopeMultiSelection { Search }, 
            TelescopeSelectionCaret { Boolean }, 
            TelescopePromptPrefix { Statement },
            TelescopeResultsBorder { PreProc, gui="nocombine" },
            TelescopePreviewBorder { Function, gui="nocombine" },
            TelescopePreviewLine { Search, gui='inverse' },

            -- Dashboard highlighting
            DashboardHeader { fg=dodgerblue, gui="bold" },
            DashboardCenter { String },
            DashboardShortcut { NonText },
            DashboardFooter { Title },

            -- Trouble
            TroubleCount {Number, gui='bold'}, 	-- TabLineSel
            -- TroubleError { Error }, 	-- LspDiagnosticsDefaultError
            -- TroubleNormal {}, 	-- Normal
            TroubleLocation { Pmenu }, 	-- LineNr
            -- TroubleWarning {}, 	-- LspDiagnosticsDefaultWarning
            -- TroublePreview {}, 	-- Search
            TroubleSignError { DiagnosticSignError }, 	-- LspDiagnosticsSignError
            TroubleSignWarning { DiagnosticSignWarn }, 	-- LspDiagnosticsSignWarning
            TroubleSignHint { DiagnosticSignHint }, 	-- LspDiagnosticsSignHint
            TroubleSignInformation { DiagnosticSignInfo }, 	-- LspDiagnosticsSignInformation
            TroubleTextError { fg=TroubleSignError.fg.lighten(25), gui='bold' }, 	-- TroubleText
            TroubleTextWarning { fg=TroubleSignWarning.fg.lighten(50), gui='bold' }, 	-- TroubleText
            TroubleTextHint { fg=TroubleSignHint.fg.lighten(50)}, 	-- TroubleText
             TroubleTextInformation { fg=TroubleSignInformation.fg.lighten(50) }, 	-- TroubleText
            -- TroubleSignOther {}, 	-- TroubleSignInformation
            -- TroubleInformation {  }, 	-- LspDiagnosticsDefaultInformation
            -- TroubleIndent {}, 	-- LineNr
            -- TroubleSource {}, 	-- Comment
            -- TroubleFoldIcon {}, 	-- CursorLineNr
            -- TroubleCode {}, 	-- Comment
            -- TroubleFile {}, 	-- Directory
            -- TroubleHint {}, 	-- LspDiagnosticsDefaultHint
            -- TroubleText {}, 	-- Normal

            -- gitsigns 
            GitSignsAdd {fg = DiffAdd.bg },
            GitSignsChange { fg = DiffChange.bg },
            GitSignsDelete { fg = DiffDelete.bg },

            -- vim-signify
            SignifySignAdd {fg = DiffAdd.bg },
            SignifySignChange { fg = DiffChange.bg },
            SignifySignDelete { fg = DiffDelete.bg },

            -- org-mode
            OrgAgendaScheduled { fg=deepskyblue.lighten(25) },
            OrgAgendaScheduledPast { fg=cornflowerblue.lighten(25).saturate(100) },
            OrgAgendaDeadline { fg=magenta.lighten(25) },
            OrgTSTag { Conditional },
            OrgTSTimestampActive { String },
            OrgTSTimestampInactive { Constant },
            OrgTSPlan { Constant },
            OrgTSCheckboxChecked { DiffAdd },
            OrgTSCheckboxHalfChecked { DiffChange },
            OrgTSCheckboxUnchecked { DiffDelete },
            OrgTSHeadlineLevel1 { fg=Title.fg.saturate(100) },
            OrgTSHeadlineLevel2 { fg=OrgTSHeadlineLevel1.fg.desaturate(25) },
            OrgTSHeadlineLevel3 { fg=OrgTSHeadlineLevel2.fg.desaturate(25) },
            OrgTSHeadlineLevel4 { fg=OrgTSHeadlineLevel3.fg.desaturate(25) },
            OrgTSHeadlineLevel5 { fg=OrgTSHeadlineLevel4.fg.desaturate(25) },
            OrgTSHeadlineLevel6 { OrgTSHeadlineLevel5 },
            OrgTSHeadlineLevel7 { OrgTSHeadlineLevel5 },
            OrgTSHeadlineLevel8 { OrgTSHeadlineLevel5 },
            OrgTSPropertyDrawer { NonText },
            OrgTSDrawer { MoreMsg },
            OrgTSDirective { Special },
            OrgTODO { Keyword },
            OrgAgendaDay { Visual },
            OrgAgendaTags { gui='bold' },

            -- aerial
            AerialLine              { bg=Pmenu.bg.lighten(50) },
            AerialGuide             { fg=ColorColumn.bg.lighten(25) },

            -- headlines
            CodeBlock { bg=Normal.bg.lighten(5) },
            Headline { bg=Normal.bg.lighten(10) },
        }

    end)

    return theme
