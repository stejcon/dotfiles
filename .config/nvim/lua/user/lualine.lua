require('lualine').setup {
	options = {
		icons_enabled = false,
		theme = 'nord',
		component_seperators = '|',
		section_seperators = '',
	},
	sections = {
		lualine_c = {
			{
				'filename',
				file_status = true,
				path = 1,
			}
		}
	},
}
