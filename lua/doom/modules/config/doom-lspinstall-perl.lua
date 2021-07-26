-- 1. get the default config from nvim-lspconfig
local config = require"lspinstall/util".extract_config("perlpls")
-- 2. update the cmd. relative paths are allowed, lspinstall automatically adjusts the cmd and cmd_cwd for us!
-- config.default_config.cmd[1] = "./node_modules/.bin/bash-language-server"
config.default_config.settings = { perlcritic = { enabled = true } }

-- 3. extend the config with an install_script and (optionally) uninstall_script
require'lspinstall/servers'.perl = vim.tbl_extend('error', config, {
  -- lspinstall will automatically create/delete the install directory for every server
  install_script = [[
    true
  ]],
  -- uninstall_script = nil -- can be omitted
})
