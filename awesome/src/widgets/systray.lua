--------------------------------
-- This is the power widget --
--------------------------------

-- Awesome Libs
local awful = require("awful")
local color = require("src.theme.gruvbox_colors")
local dpi = require("beautiful").xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")

require("src.core.signals")

return function(s)
	local systray = wibox.widget({
		{
			{
				wibox.widget.systray(),
				widget = wibox.container.margin,
				id = "st",
			},
			strategy = "exact",
			layout = wibox.container.constraint,
			id = "container",
		},
		widget = wibox.container.background,
		shape = function(cr, width, height)
			gears.shape.rounded_rect(cr, width, height, 5)
		end,
		bg = color.dark1,
	})
	-- Signals
	Hover_signal(systray.container, color.dark0_soft, color.dark1)

	awesome.connect_signal("systray::update", function()
		local num_entries = awesome.systray()

		if num_entries == 0 then
			systray.container.st:set_margins(0)
		else
			systray.container.st:set_margins(dpi(4))
		end
	end)

	systray.container.st.widget:set_base_size(dpi(20))

	return systray
end
