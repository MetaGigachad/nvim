local opts = {
	server = {
		checkOnSave = {
			enable = true,
		},
		standalone = true,
	}, -- rust-analyzer options
}

require("rust-tools").setup(opts)
