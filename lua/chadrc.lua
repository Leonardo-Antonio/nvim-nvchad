-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "onedark",

	hl_override = {
		Comment = { italic = true, fg = "light_grey" },
		["@comment"] = { italic = true, fg = "light_grey" },
	},
}

return M
