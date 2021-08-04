local config = require("lspinstall/util").extract_config("rnix")
config.default_config.cmd[1] = "rnix-lsp"

require("lspinstall/servers").nix = vim.tbl_extend("error", config, {
  install_script = [[
    true
  ]],
})
