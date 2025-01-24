require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag = "-NoLogo -Command"
vim.opt.shellxquote = ""
vim.cmd("autocmd BufRead,BufNewFile *.blade.php set filetype=blade.php")

require("telescope").setup {
  defaults = {
    winblend = 20 -- Adjust transparency level
  }
}

vim.cmd [[ highlight TelescopeNormal guibg=NONE ]]

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format()
  end,
})

--vim.api.nvim_create_autocmd("VimEnter", {
--callback = function()
--require("nvim-tree.api").tree.open()
--end,
--})

vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    vim.opt.foldmethod = "indent"
    vim.cmd("normal! zR")
  end,
})
