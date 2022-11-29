local M = {}
local g, api, keymap = vim.g, vim.api, vim.keymap
local switch = require('wordswitch')
g.wordswitch_definitions = {
	{ 'acquire', 'release' },
	{ 'add', 'remove' },
	{ 'advance', 'retreat' },
	{ 'allocate', 'deallocate' },
	{ 'allow', 'deny' },
	{ 'assemble', 'disassemble' },
	{ 'assign', 'deassign' },
	{ 'associate', 'dissociate' },
	{ 'attach', 'detach' },
	{ 'begin', 'end' },
	{ 'bind', 'unbind' },
	{ 'commit', 'rollback' },
	{ 'compile', 'decompile' },
	{ 'compose', 'parse' },
	{ 'compress', 'decompress' },
	{ 'connect', 'disconnect' },
	{ 'construct', 'destruct' },
	{ 'create', 'destroy' },
	{ 'do', 'undo' },
	{ 'enable', 'disable' },
	{ 'encode', 'decode' },
	{ 'encrypt', 'decrypt' },
	{ 'enqueue', 'dequeue' },
	{ 'enter', 'leave' },
	{ 'expand', 'collapse' },
	{ 'first', 'last' },
	{ 'freeze', 'unfreeze' },
	{ 'front', 'back' },
	{ 'get', 'set' },
	{ 'grant', 'revoke' },
	{ 'head', 'tail' },
	{ 'high', 'low' },
	{ 'import', 'export' },
	{ 'include', 'exclude' },
	{ 'increase', 'decrease' },
	{ 'increment', 'decrement' },
	{ 'indent', 'dedent' },
	{ 'inflate', 'deflate' },
	{ 'inject', 'eject' },
	{ 'input', 'output' },
	{ 'insert', 'delete' },
	{ 'install', 'uninstall' },
	{ 'left', 'right' },
	{ 'Left', 'Right' },
	{ 'link', 'unlink' },
	{ 'load', 'unload' },
	{ 'lock', 'unlock' },
    { 'max', 'min'},
	{ 'maximum', 'minimum' },
	{ 'new', 'old' },
	{ 'next', 'previous' },
	{ 'open', 'close' },
	{ 'off', 'on' },
	{ 'paste', 'cut' },
	{ 'push', 'pop' },
	{ 'read', 'write' },
	{ 'reference', 'dereference' },
	{ 'register', 'deregister' },
	{ 'resume', 'suspend' },
	{ 'select', 'deselect' },
	{ 'send', 'receive' },
	{ 'serialize', 'deserialize' },
	{ 'set', 'get' },
	{ 'show', 'hide' },
	{ 'start', 'stop' },
	{ 'true', 'false' },
	{ 'True', 'False' },
	{ 'TRUE', 'FALSE' },
	{ 'up', 'down' },
	{ 'Up', 'Down' },
	{ 'upper', 'lower' },
	{ 'bom', 'middle', 'top' },
}

api.nvim_create_user_command('WordSwitch', function()
	switch.wordswitch()
end, { force = true })

if g.wordswitch_keymap then
else
    g.wordswitch_keymap = 'gs'
end

keymap.set('n', g.wordswitch_keymap, '<cmd>WordSwitch<CR>', { silent = true })

return M
