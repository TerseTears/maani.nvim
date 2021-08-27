local lightskyblue = '#87CEFA'
local deepskyblue = '#00BFFF'
local cornflowerblue = '#6495ED'
local dodgerblue = '#1E90FF'
local royalblue = '#4169E1'
local mediumslateblue = '#7B68EE'
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
        a = {bg = gold, fg = black, gui = "bold"},
        b = {bg = white, fg = black},
        c = {bg = royalblue, fg = black}
    },
    insert = {
        a = {bg = cornflowerblue, fg = black, gui = 'bold'},
        b = {bg = white, fg = black},
        c = {bg = gold, fg = black}
    },
    visual = {
        a = {bg = cadetblue, fg = black, gui = "bold"},
        b = {bg = limegreen, fg = black},
        c = {bg = slategray, fg = black}
    },
    replace = {
        a = {bg = deeppink, fg = black, gui = "bold"},
        b = {bg = magenta, fg = black},
        c = {bg = hotpink, fg = black}
    },
    command = {
        a = {bg = yellow, fg = black, gui = "bold"},
        b = {bg = white, fg = black},
        c = {bg = cornflowerblue, fg = black}
    },
    inactive = {
        a = {bg = gold, fg = black, gui = "bold"},
        b = {bg = white, fg = black},
        c = {bg = royalblue, fg = black}
    }
}
