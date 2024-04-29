local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "catppuccin-mocha"
config.hide_tab_bar_if_only_one_tab = true
config.initial_rows = 48
config.initial_cols = 128
config.use_fancy_tab_bar = false
config.enable_wayland = false --Set to 'false' if Wezterm fails to load in Wayland.

config.colors = {
	tab_bar = {
		background = "#181825", --Catppuccin Mantle
		active_tab = {
			bg_color = "#313244", --Catppuccin Surface0
			fg_color = "#94e2d5", --Catppuccin Teal
			intensity = "Bold",
			underline = "Single",
		},
		inactive_tab = {
			bg_color = "#1e1e2e", --Catppuccin Base
			fg_color = "#cdd6f4", --Catppuccin Text
		},
		inactive_tab_hover = {
			bg_color = "#45475a", --Catppuccin Surface1
			fg_color = "#cdd6f4", --Catppuccin Text
		},
		new_tab = {
			bg_color = "#1e1e2e", --Catppuccin Base
			fg_color = "#cdd6f4", --Catppuccin Text
		},
		new_tab_hover = {
			bg_color = "#45475a", --Catppuccin Surface1
			fg_color = "#cdd6f4", --Catppuccin Text
		},
	},
}

return config
