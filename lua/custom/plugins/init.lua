-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Color scheme
  {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd [[colorscheme tokyonight]]
    end,
  },

  -- Utility
  {
    'github/copilot.vim',
    config = function()
      vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = false, expr = true, noremap = true })
    end,
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'nvim-telescope/telescope.nvim', -- optional
      'sindrets/diffview.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
    },
    config = true,
  },
  -- 'vimwiki/vimwiki',
  -- 'sindrets/diffview.nvim',
  'mbbill/undotree',
  'tpope/vim-repeat',
  'romgrk/nvim-treesitter-context',
  'sbdchd/neoformat',

  -- LSP and stuff
  'simrat39/rust-tools.nvim',
}
