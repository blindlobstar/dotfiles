local opts = { noremap = true, silent = true }
local vscode = require('vscode-neovim')

-- code actions
vim.keymap.set("n", "gi", function() 
    vscode.action('editor.action.goToImplementation', {})
end, opts)
vim.keymap.set("n", "gr", function() 
    vscode.action('editor.action.goToReferences', {})
end, opts)
vim.keymap.set("n", "gk", function() 
    vscode.action('editor.action.triggerParameterHints', {})
end, opts)

-- navigation
vim.keymap.set("n", "K", function() 
    vscode.action('workbench.action.nextEditor', {})
end, opts)
vim.keymap.set("n", "J", function() 
    vscode.action('workbench.action.previousEditor', {})
end, opts)

-- problems
vim.keymap.set("n", "]e", function() 
    vscode.action('editor.action.marker.next', {})
end, opts)
vim.keymap.set("n", "[e", function() 
    vscode.action('editor.action.marker.prev', {})
end, opts)
-- not working(
vim.keymap.set("n", "]E", function() 
    vscode.action('editor.action.marker.nextInFiles', {})
end, opts)
vim.keymap.set("n", "[E", function() 
    vscode.action('editor.action.marker.prevInFiles', {})
end, opts)

-- terminal
vim.keymap.set("n", "<space>lg", function() 
    vscode.action('workbench.action.createTerminalEditor', {})
    vscode.action('workbench.action.terminal.sendSequence', { args = { 'text', 'lg' } }) -- not working(
end, opts)

-- default
vim.keymap.set("n", "˚", ":m .-2<CR>==", opts)
vim.keymap.set("n", "∆", ":m .+1<CR>==", opts)