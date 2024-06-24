require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require("telescope.builtin")
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- dapui keymaps
local n = "n"
-- map the f9 key to run the debugger
map(n, '<F9>', function() require('dap').continue() end)
map(n, '<leader>b', function() require('dap').toggle_breakpoint() end)
map(n, '<leader>dpr', function() require('dap-python').test_method() end)
map(n, '<leader>fw', function() builtin.grep_string() end, { desc = "Find word" })
map(n, '<leader>fs', function() builtin.lsp_document_symbols() end, { desc = "Find Document symbols" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
