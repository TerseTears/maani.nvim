local lightskyblue = '#87CEFA'
local deepskyblue = '#00BFFF'
local cornflowerblue = '#6495ED'
local dodgerblue = '#1E90FF'
local royalblue = '#4169E1'
local darkenmediumslateblue = '#252334'
local white = '#FFFFFF'
local silver = '#C0C0C0'
local slategray = '#708090'
local cadetblue = '#5F9EA0'
local yellow = '#FFFF00'
local gold = '#FFD700'
local orange = '#FFA500'
local darkorange = '#FF8C00'
local hotpink = '#FF69B4'
local magenta = '#FF00FF'
local deeppink = '#FF1493'
local orangered = '#FF4500'
local firebrick = '#B22222'
local lime = '#00FF00'
local limegreen = '#32CD32'
local darkseagreen = '#8FBC8F'
local mediumseagreen = '#3CB371'
local palegreen = '#98FB98'
local black = '#000000'

return {
    normal = {
        a = {bg = cornflowerblue, fg = black, gui = "bold"},
        b = {bg = gold, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    },
    insert = {
        a = {bg = gold, fg = black, gui = "bold"},
        b = {bg = cornflowerblue, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    },
    visual = {
        a = {bg = limegreen, fg = black, gui = "bold"},
        b = {bg = cadetblue, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    },
    replace = {
        a = {bg = deeppink, fg = black, gui = "bold"},
        b = {bg = hotpink, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    },
    command = {
        a = {bg = lightskyblue, fg = black, gui = "bold"},
        b = {bg = yellow, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    },
    inactive = {
        a = {bg = gold, fg = black, gui = "bold"},
        b = {bg = white, fg = black},
        c = {bg = darkenmediumslateblue, fg = white}
    }
}
