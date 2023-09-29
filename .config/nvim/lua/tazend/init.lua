require("tazend.remap")
require("tazend.set")

local augroup = vim.api.nvim_create_augroup
local TazendGroup = augroup('tazend', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = TazendGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
