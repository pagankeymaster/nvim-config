if fn.empty(fn.glob(install_path)) > 0 then
  notify { message = "packer.nvim doesn't exist. Cloning..." }
  bootstrap = system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  if not pcall(cmd, "packadd packer.nvim") then
    notify "Check your internet connection."
  end
end

if fn.empty(fn.glob(compile_path)) > 0 then
  notify "Couldn't find plugin specifications. Syncing now..."
  bootstrap = true
  _ = pcall(cmd, "packadd packer.nvim")
end

local packer = require "packer"
packer.init(require "configs.core.packer")
packer.reset()

for _, module in
  ipairs {
    "health",
    "cmp",
    "core",
    "utils",
    "lsp",
    "treesitter",
    "others",
    "dev",
    "editing",
    "workflow",
    "telescope",
    "ui",
  }
do
  utils.load_module(packer.use, require("plugins." .. module))
end

if bootstrap then
  packer.sync()
  packer.on_compile_done = schedule_wrap(function()
    _ = pcall(require, "configs.core.impatient")
    notify {
      message = "Run :LspInstall and :TSStart or, press\n<leader>l and <leader>T",
      icon = " ",
      title = "KrakenVim",
    }
  end)
end

return setmetatable({}, {
  __index = function(_, operation)
    return packer[operation]
  end,
})

-- vim:ft=lua
