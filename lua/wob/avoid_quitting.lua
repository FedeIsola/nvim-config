-- 1. Redefinir 'exit' en minúscula usando una abreviación
-- Esto hace que cuando escribas :exit se transforme en :qa (quit all)
vim.cmd("cabbrev exit qa")

-- 2. Tu comando de la 'q' para que use 'close' y no cierre nvim
vim.cmd([[
cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'close' : 'q')<CR>
]])
