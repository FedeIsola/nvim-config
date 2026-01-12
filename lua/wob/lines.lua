vim.opt.number = true
vim.o.relativenumber = true;
vim.api.nvim_set_hl(0, 'LineNr', { fg = "white"});

-- 'nu' activa números y 'rnu' activa números relativos
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"
