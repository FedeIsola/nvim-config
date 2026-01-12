local M = {}

-- Función para obtener el tamaño del archivo en formato legible
local function get_file_size()
  local file = vim.fn.expand('%:p')
  if file == "" or file == nil then return "" end
  local size = vim.fn.getfsize(file)
  if size <= 0 then return "" end
  if size < 1024 then
    return size .. "B "
  elseif size < 1048576 then
    return string.format("%.1fKB ", size / 1024)
  else
    return string.format("%.1fMB ", size / 1048576)
  end
end

-- Función para obtener la última hora de modificación
local function get_last_modified()
  local file = vim.fn.expand('%:p')
  if file == "" or vim.loop.fs_stat(file) == nil then return "" end
  local mtime = vim.loop.fs_stat(file).mtime.sec
  return "󱑂 Updated at " .. os.date("%H:%M", mtime) .. " "
end

-- Función principal que construye la barra
function M.render()
  local statusline = ""

  -- 1. Ruta completa (%F) y si está modificado (%m)
  statusline = statusline .. " %F %m"

  -- 2. Separador para empujar el resto a la derecha (%=)
  statusline = statusline .. "%="

  -- 3. Añadir tamaño del archivo
  statusline = statusline .. get_file_size()

  -- 4. Añadir última modificación
  statusline = statusline .. get_last_modified()

  -- 5. Posición: Línea/Columna (%l:%c) y Porcentaje (%p%%)
  statusline = statusline .. " %l:%c │ %p%% "

  return statusline
end

-- Al final del archivo para que nada lo sobreescriba
vim.opt.laststatus = 3
vim.opt.statusline = "%!v:lua.require('wob.statusline').render()"

return M
