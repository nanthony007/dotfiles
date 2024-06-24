-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():toggle_fullscreen()
end)
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
-- config.color_scheme = "Gruvbox dark, hard (base16)"
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("Berkeley Mono")
config.font_size = 20.0

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- config.tab_bar_at_bottom = true
-- config.window_background_image = "/Users/nick/Pictures/desktop_pics/dsRhIlE.jpg"
-- config.window_background_image_hsb = {
-- 	-- Darken the background image by reducing it to 1/3rd
-- 	brightness = 0.2,
-- }
config.window_background_opacity = 0.8
config.text_background_opacity = 0.5

-- and finally, return the configuration to wezterm
return config
