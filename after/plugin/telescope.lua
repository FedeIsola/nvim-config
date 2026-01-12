local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end, { desc = 'Find in project' })
vim.keymap.set('n', '<leader>ph', function()
  -- 1. Filtramos la lista para que no haya directorios y el archivo sea legible
  local recent_files = vim.tbl_filter(function(path)
    return vim.fn.isdirectory(path) == 0 and vim.fn.filereadable(path) == 1
  end, vim.v.oldfiles)

  -- 2. Abrimos un picker genérico con la estética de Telescope
  require('telescope.pickers').new({}, {
    prompt_title = "Recent Files",
    finder = require('telescope.finders').new_table({
      results = recent_files,
      entry_maker = require('telescope.make_entry').gen_from_file({})
    }),
    sorter = require('telescope.config').values.generic_sorter({}),
    previewer = require('telescope.config').values.file_previewer({}),
  }):find()
end, { desc = 'Telescope recent files (solo archivos)' })
