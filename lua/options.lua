local options = {
	backup = false, -- stop backing up the file
	tabstop = 2, -- tab spans 2 spaces
	relativenumber = true,
	number = true,
	shiftwidth = 2, -- clicking tab moves by 2 spaces
	guifont = "monospace:h17",
	fileencoding = "utf-8",
	mouse = 'a', -- enable mouse in the neovim
	smartindent = true,
	splitbelow = true, -- split horizontally will add tab on the bottom
	splitright = true, -- split vertically will add tab on the right
	wrap = false,
	hidden = true,
	completeopt = { "menuone", "noselect" },
	updatetime = 300,
}
for opt_name, opt_value in pairs(options) do
	vim.opt[opt_name] = opt_value
end

vim.cmd "set whichwrap+=<,>,[,],h,l" -- `l` can now move to the next line
vim.cmd [[set iskeyword+=-]]
vim.opt.clipboard:append("unnamedplus") -- to use in WSL2 install `scoop install win32yank` by powershell
vim.wo.fillchars = 'eob: ' -- remove ~ from the begginign of the lines
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
vim.cmd [[autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll]]
vim.cmd [[ autocmd BufRead,BufNewFile *.org set filetype=org ]]
