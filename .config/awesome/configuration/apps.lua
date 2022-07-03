local filesystem = require(gears.filesystem)
local config_dir = filesystem.get_configuration_dir()

return {
	default = {
		terminal = "alacritty",
		text_editor = os.getenv("EDITOR") or "nvim",
		code_editor = os.getenv("EDITOR") or "nvim",
		web_browser = "qutebrowser",
	}
}
