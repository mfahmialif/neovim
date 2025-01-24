return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "jwalton512/vim-blade",
    ft = "blade.php" -- Set filetype for Blade files
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "supermaven-inc/supermaven-nvim",
        opts = {},
      },
    },

    opts = function(_, opts)
      opts.sources[1].trigger_chars = { "-" }
      table.insert(opts.sources, 1, { name = "supermaven" })
    end
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      winopts = {
        height = 0.85,      -- Window height
        width = 0.80,       -- Window width
        border = 'rounded', -- Border style: single, double, rounded, none
      },
      previewer = false,    -- Disable previewer globally
      files = {
        prompt = 'Files> ', -- Prompt text
        cwd = vim.loop.cwd(), -- Search files in the current working directory
        previewer = false,  -- Disable previewer in file search
      },
      grep = {
        rg_opts = "--hidden --column --line-number --no-heading " ..
            "--color=always --smart-case -g '!.git'",
        prompt = 'Rg> ', -- Prompt for ripgrep
        previewer = false, -- Disable previewer in grep search
      },
      buffers = {
        prompt = 'Buffers> ',
        previewer = false, -- Disable previewer in buffers search
      },
    }
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
