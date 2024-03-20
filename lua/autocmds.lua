local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
