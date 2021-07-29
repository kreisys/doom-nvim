return function()
	local doomrc = require('doom.core.config.doomrc').load_doomrc()
	local functions = require('doom.core.functions')

	require('nvim-treesitter.install').compilers = { 'gcc' }

	local parser_configs =
		require('nvim-treesitter.parsers').get_parser_configs()

	local function get_ts_parsers(languages)
		local langs = {}

		for _, lang in ipairs(languages) do
			lang = lang:gsub('%s+%+lsp', '')
			-- If the lang is config then add parsers for JSON, YAML and TOML
			if lang == 'config' then
				table.insert(langs, 'json')
				table.insert(langs, 'yaml')
				table.insert(langs, 'toml')
			elseif parser_configs[lang] then
				table.insert(langs, lang)
			end
		end
		return langs
	end

	-- Set up treesitter for Neorg
	parser_configs.norg = {
		install_info = {
			url = 'https://github.com/vhyrro/tree-sitter-norg',
			files = { 'src/parser.c' },
			branch = 'main',
		},
	}
	-- selene: allow(undefined_variable)
	if packer_plugins and packer_plugins['neorg'] then
		table.insert(doomrc.langs, 'norg')
	end

	require('nvim-treesitter.configs').setup({
		ensure_installed = get_ts_parsers(doomrc.langs),
		highlight = { enable = true },
		autopairs = {
			enable = functions.is_plugin_disabled('autopairs') and false or true,
		},
		indent = { enable = true },
		tree_docs = { enable = true },
		context_commentstring = { enable = true },
		autotag = {
			enable = true,
			filetypes = {
				'html',
				'javascript',
				'javascriptreact',
				'typescriptreact',
				'svelte',
				'vue',
				'markdown',
			},
		},
	})
end
