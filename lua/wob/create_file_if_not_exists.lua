-- Función para mejorar 'gf'
vim.keymap.set('n', 'gf', function()
  local target_file = vim.fn.expand('<cfile>')
  
  -- Verificamos si el archivo existe
  if vim.fn.filereadable(target_file) == 1 then
    vim.cmd('normal! gf')
  else
    -- Si no existe, preguntamos si queremos crearlo
    local confirm = vim.fn.confirm("El archivo no existe. ¿Deseas crearlo?", "&Sí\n&No", 2)
    if confirm == 1 then
      vim.cmd('edit ' .. target_file)
      print("Nuevo archivo: " .. target_file)
    end
  end
end, { desc = "Ir al archivo (o crearlo si no existe)" })
