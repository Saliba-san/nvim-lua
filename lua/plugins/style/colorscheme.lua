return {
        'sainnhe/gruvbox-material',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
            vim.g.gruvbox_material_transparent_background = true
            vim.g.gruvbox_material_enable_bold = true
            vim.g.gruvbox_material_enable_italic = true

            vim.g.gruvbox_material_diagnostic_virtual_text   = 'colored'
            vim.g.gruvbox_material_background    = 'soft'

            vim.g.gruvbox_material_disable_italic_comment = false
            vim.g.gruvbox_material_dim_inactive_windows  = true

            vim.cmd.hi 'Comment gui=none'
            vim.cmd.hi 'link tklink BlueBold'
            vim.cmd.hi 'link tkBrackets Grey'
            vim.cmd.hi 'link tkHighlight MiniStatuslineModeReplace'
            vim.cmd.hi 'link CalNavi CalRuler'
            vim.cmd.hi 'link tkTagSep Grey'
            vim.cmd.hi 'link tkTag Purple'
            vim.cmd.colorscheme 'gruvbox-material'
        end,
    }
