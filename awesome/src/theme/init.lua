local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")

theme_path = awful.util.getdir("config") .. "/src/theme/"
theme = {}

dofile(theme_path .. "theme_variables.lua")

theme.awesome_icon = theme_path .. "../assets/icons/ArchLogo.png"
theme.awesome_subicon = theme_path .. "../assets/icons/ArchLogo.png"

-- Wallpaper
-- #TODO: try to randomize the wallpaper
beautiful.wallpaper = "/home/marco/Pictures/201rhb8b93s71.png"

screen.connect_signal("request::wallpaper", function(s)
	if beautiful.wallpaper then
		if type(beautiful.wallpaper) == "string" then
			gears.wallpaper.maximized(beautiful.wallpaper, s)
		else
			beautiful.wallpaper(s)
		end
	end
end)

beautiful.init(theme)
