require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-t>", function()
  require("nvchad.themes").open { style = "flat" }
end, { desc = "Open Theme Selector" })

map("i", "<C-s>", "<ESC>:w<CR>", opts)

map("i", "<S-Up>", "<ESC><C-v>k", opts)    -- Shift + Up for visual block upward
map("i", "<S-Down>", "<ESC><C-v>j", opts)  -- Shift + Down for visual block downward
map("i", "<S-Left>", "<ESC><C-v>h", opts)  -- Shift + Left for visual block leftward
map("i", "<S-Right>", "<ESC><C-v>l", opts) -- Shift + Right for visual block rightward

map("n", "<Space>q", ":q<CR>", opts)

map("n", "<C-p>", "<cmd>lua require('fzf-lua').files()<CR>", { desc = "Find files" })
map("n", "<leader>f2", "<cmd>lua require('fzf-lua').grep()<CR>", { desc = "Grep in project" })
map("n", "<leader>f2", "<cmd>lua require('fzf-lua').buffers()<CR>", { desc = "List buffers" })
map("n", "<leader>f3", "<cmd>lua require('fzf-lua').oldfiles()<CR>", { desc = "History" })

-- tes
