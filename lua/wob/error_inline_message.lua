vim.diagnostic.config({
	-- Muestra el mensaje de error al final de la línea
	virtual_text = {
		spacing = 4,
		prefix = '●', -- Puedes cambiar esto por '󰅚 ' si usas Nerd Fonts
		severity_limit = "hint", -- Define desde qué nivel mostrar (error, warn, info, hint)
	},
	-- Mantiene el subrayado en el código
	underline = true,
	-- Mantiene los signos (la "E") en la columna izquierda
	signs = true,
	-- Ordena los errores por severidad
	severity_sort = true,
)
