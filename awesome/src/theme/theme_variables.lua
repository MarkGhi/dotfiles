------------------------------------------------------------------------------------------
-- This is the main themeing file, here are most colors changed                         --
-- If you want to change individual widget colors you will need to edit them seperately --
------------------------------------------------------------------------------------------

-- Awesome Libs
local color = require("src.theme.colors")
local dpi = require("beautiful.xresources").apply_dpi
local gears = require("gears")
local awful = require("awful")

local user_vars = require("src.theme.user_variables")

-- Icon directory path
local icondir = awful.util.getdir("config") .. "src/assets/icons/titlebar/"

theme.font = "JetBrainsMono Nerd Font, bold 12"

theme.bg_normal = color["Grey900"]
theme.bg_focus = color["Grey900"]
theme.bg_urgent = color["RedA200"]
theme.bg_minimize = color["White"]
theme.bg_systray = color["White"]

theme.fg_normal = color["White"]
theme.fg_focus = color["White"]
theme.fg_urgent = color["White"]
theme.fg_minimize = color["White"]

theme.useless_gap = dpi(5) -- Change this to 0 if you dont like window gaps
theme.border_width = dpi(0) -- Change this to 0 if you dont like borders
theme.border_normal = color["Grey800"]
--theme.border_focus = color["Red"] -- Doesnt work, no idea why; workaround is in signals.lua
theme.border_marked = color["Red400"]

--theme.menu_submenu_icon = theme_path .. "assets.ArchLogo.png"
theme.menu_height = dpi(40)
theme.menu_width = dpi(200)
theme.menu_bg_normal = color["Grey900"]
theme.menu_bg_focus = color["Grey800"]
theme.menu_fg_focus = color["White"]
theme.menu_border_color = color["Grey800"]
theme.menu_border_width = dpi(0)
theme.menu_shape = function(cr, width, heigth)
	gears.shape.rounded_rect(cr, width, heigth, 5)
end

theme.taglist_fg_focus = color["Grey900"]
theme.taglist_bg_focus = color["White"]

theme.tooltip_border_color = color["Grey800"]
theme.tooltip_bg = color["Grey900"]
theme.tooltip_fg = color["YellowA200"]
theme.tooltip_border_width = dpi(4)
theme.tooltip_gaps = dpi(15)
theme.tooltip_shape = function(cr, width, heigth)
	gears.shape.rounded_rect(cr, width, heigth, 5)
end

theme.notification_spacing = dpi(20)

theme.titlebar_close_button_normal = icondir .. "close.svg"
theme.titlebar_maximized_button_normal = icondir .. "maximize.svg"
theme.titlebar_minimize_button_normal = icondir .. "minimize.svg"
theme.titlebar_maximized_button_active = icondir .. "maximize.svg"
theme.titlebar_maximized_button_inactive = icondir .. "maximize.svg"

theme.bg_systray = color["BlueGrey800"]
theme.systray_icon_spacing = dpi(10)

theme.hotkeys_bg = color["Grey900"]
theme.hotkeys_fg = color["White"]
theme.hotkeys_border_width = 0
theme.hotkeys_shape = function(cr, width, height)
	gears.shape.rounded_rect(cr, width, height, 10)
end
theme.hotkeys_description_font = "JetBrainsMono Nerd Font, bold 14"

-- Icon directory path
local layout_path = theme_path .. "../assets/layout/"

-- Here are the icons for the layouts defined, if you want to add more layouts go to main/layouts.lua
theme.layout_floating = layout_path .. "floating.svg"
theme.layout_tile = layout_path .. "tile.svg"
theme.layout_dwindle = layout_path .. "dwindle.svg"
theme.layout_fairh = layout_path .. "fairh.svg"
theme.layout_fairv = layout_path .. "fairv.svg"
theme.layout_fullscreen = layout_path .. "fullscreen.svg"
theme.layout_max = layout_path .. "max.svg"
theme.layout_cornerne = layout_path .. "cornerne.svg"
theme.layout_cornernw = layout_path .. "cornernw.svg"
theme.layout_cornerse = layout_path .. "cornerse.svg"
theme.layout_cornersw = layout_path .. "cornersw.svg"
