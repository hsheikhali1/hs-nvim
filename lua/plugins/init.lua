return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

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
      -- ensure_installed = {
      -- 	"lua-language-server", "stylua",
      -- 	"html-lsp", "css-lsp" , "prettierd", "eslint_d",
      --     "tsserver"
      -- },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "tsx",
        "typescript",
        "javascript",
      },
    },
  },
  {
    "kevinhwang91/nvim-ufo",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      {
        "luukvbaal/statuscol.nvim",
        dependencies = "kevinhwang91/promise-async",
        config = function()
          local builtin = require "statuscol.builtin"
          require("statuscol").setup {
            ft_ignore = { "NvimTree", "Outline" },
            segments = {
              hl = "FoldColumn",
              { sign = { namespace = { "diagnostic*" } } },
              { sign = { namespace = { "gitsign" } }, click = "v:lua.ScSa" },
              { text = { builtin.lnumfunc, "  " }, click = "v:lua.ScLa" },
              { text = { builtin.foldfunc, "  " }, click = "v:lua.ScFa" },
            },
          }
        end,
      },
    },
    init = function()
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,
    opts = {
      provider_selector = function()
        return { "treesitter", "indent" }
      end,
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.nvim-lint"
    end,
  },
  {
    "dnlhc/glance.nvim",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "nvimtree")
      require("nvim-tree").setup(opts)
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      settings = {
        tsserver_file_preferences = {
          includeInlayParameterNameHints = "all",
          includeCompletionsForModuleExports = true,
        },
      },
    },
  },
}
