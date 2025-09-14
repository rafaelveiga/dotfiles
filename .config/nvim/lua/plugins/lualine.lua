return {
    'nvim-lualine/lualine.nvim',
    opts = {
        options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = '|',
            section_separators = ''
        },
        tabline = {
            lualine_a = {'buffers'},
            lualine_z = {'tabs'}
        }
    }
}
