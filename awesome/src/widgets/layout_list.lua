----------------------------------
-- This is the layoutbox widget --
----------------------------------

-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.gruvbox_colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
require("src.core.signals")

local icon_dir = awful.util.getdir("config") .. "src/assets/icons/"

local myawesomemenu = {
	{ "Manual", terminal .. " -e man awesome" },
	{ "Edit config", editor_cmd .. " " .. awesome.conffile },
	{ "Restart", awesome.restart },
	{
		"Quit",
		function()
			awesome.quit()
		end,
	},
}

local mymainmenu = awful.menu({
	items = {
		{ "Awesome", myawesomemenu, gears.color.recolor_image(icon_dir .. "arch_logo.svg", color["Grey900"]) },
		{ "Open terminal", terminal },
	},
})

-- Returns the layoutbox widget
return function()
	local layout = wibox.widget({
		{
			{
				awful.widget.launcher({
					image = gears.color.recolor_image(icon_dir .. "arch_logo.svg", color.neutral_aqua),
					menu = mymainmenu,
				}),
				id = "icon_layout",
				widget = wibox.container.place,
			},
			id = "icon_margin",
			left = dpi(5),
			right = dpi(5),
			top = dpi(5),
			bottom = dpi(5),
			forced_width = dpi(40),
			widget = wibox.container.margin,
		},
		bg = color.dark0,
		shape = function(cr, width, height)
			gears.shape.rounded_rect(cr, width, height, 5)
		end,
		widget = wibox.container.background,
	})

	-- Signals
	Hover_signal(layout, color.dark0_soft, color.neutral_aqua)

	layout:connect_signal("button::press", function()
		awful.layout.inc(-1)
	end)

	return layout
end
