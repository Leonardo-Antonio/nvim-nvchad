return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    version = "*",  -- Use the latest tagged version
    opts = {},  -- This causes the plugin setup function to be called
    keys = {
      {"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add a cursor then move down"},
      {"<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "i", "x"}, desc = "Add a cursor then move down"},
      {"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add a cursor then move up"},
      {"<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "i", "x"}, desc = "Add a cursor then move up"},
      {"<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}, desc = "Add or remove a cursor"},
      {"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to the word under the cursor"},
    },
  },
  {
    'APZelos/blamer.nvim',
    config = function ()
      vim.g.blamer_enabled = true
      vim.g.blamer_delay = 500
      vim.g.blamer_show_in_visual_modes = true
      vim.g.blamer_relative_time = true
    end
  },
  {
    'anuvyklack/pretty-fold.nvim',
     config = function()
        require('pretty-fold').setup()
     end,
  },
  {
    'fatih/vim-go',
    ft = {'go'}, -- Este plugin se cargará solo para archivos .go
    config = function()
        -- Configuración del plugin
        vim.g.go_debugger = 'dlv'
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "gopls", "pylyzer", "pyright",
        "sqls", "biome",
  		},
  	},
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css", "javascript", "json",
  --      "python", "go", "typescript", "yaml",
  --      "markdown", "toml", "bash", "dockerfile",
  -- 		},
  -- 	},
  --   config = function()
  --     vim.g.nvim_tree_hide_dotfiles = 0
  --   end,
  -- },
}
