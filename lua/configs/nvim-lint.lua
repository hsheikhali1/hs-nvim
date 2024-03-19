local lint = require("lint")

lint.linters_by_ft = {
  javascript = {"prettierd", "eslint_d"},
  javascriptreact = {"prettierd", "eslint_d"},
  typescript = {"prettierd", "eslint_d"},
  typescriptreact = {"prettierd", "eslint_d"},
}

vim.api.nvim_create_autocmd({"BufWritePost"}, {
  callback = function ()
    lint.try_lint()
  end
})
