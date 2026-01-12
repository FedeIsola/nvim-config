return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Se carga después de iniciar
    priority = 1000, -- Para que cargue antes que otros plugins de UI
    config = function()
        require('tiny-inline-diagnostic').setup({
            preset = "modern", -- Estilo moderno con bordes y puntos
            options = {
                show_all_diags_on_area = true, -- Muestra todos los errores del área
                multiple_diag_under_cursor = true, -- Muestra todos si hay varios en la misma línea
            }
        })
    end
}
