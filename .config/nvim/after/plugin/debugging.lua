local dap = require('dap')
local dap_go = require('dap-go')
local dapui = require('dapui')
local dap_virtual_text = require('nvim-dap-virtual-text')

vim.keymap.set('n', '<F5>', dap.continue, {})
vim.keymap.set('n', '<F3>', dap.step_over, {})
vim.keymap.set('n', '<F2>', dap.step_into, {})
vim.keymap.set('n', '<F12>', dap.step_out, {})
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<leader>dr', dap.repl.open, {})
vim.keymap.set('n', '<leader>dt', dap_go.debug_test, {})

vim.keymap.set('n', '<leader>B', function ()
    dap.set_breakpoint(vim.fn.input('Breakpoint condition: '));
end)

vim.keymap.set('n', '<leader>lp', function ()
   dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '));
end)

dap_virtual_text.setup()
dap_go.setup()
dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end
