local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'b3nj5m1n/kommentary'
  use 'windwp/nvim-autopairs'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'} }
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use {"ellisonleao/glow.nvim", branch = 'main'}
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}
end)


-- manually require every configuration under `plugins` cuz
-- currently idk how the module system of lua works
require("plugins/barbar")
require("plugins/nvim-autopairs")
require("plugins/telescope")
require("plugins/lsp")
require("plugins/glow")
require("plugins/trouble")
