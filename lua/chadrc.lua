-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "jabuti",
  transparency = true,
  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = { load_on_startup = true }
-- M.ui = {
-- 	theme = "jabuti",
-- 	theme_toggle = { "jabuti", "tokyo_night" },
-- 	transparency = true,

--     --   tabufline = {
--     --      lazyload = false
--     --  }
-- }



return M
