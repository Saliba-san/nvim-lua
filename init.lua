-- Vim settings
require('settings')

-- Basic Keymaps
require('maps/globalmaps')

-- [[ Configure and install plugins ]]
require('install_lazy')

require('lazy').setup({
    -- Style Plugins
    require('plugins/style/colorscheme'),
    require('plugins/style/statusline'),
    require('plugins/style/fluff'),
    require('plugins/style/trouble'),
    require('plugins/style/incline'),

    -- Notetaking plugins
    require('plugins/notetaking/neorg'),
    require('plugins/notetaking/diagrams'),

    -- Navigation plugins
    require('plugins/navigation/neo-tree'),
    require('plugins/navigation/telescope'),
    require('plugins/navigation/project'),

    -- Editor Plugins
    require('plugins/editor/nvim-various-textobjs'),
    require('plugins/editor/treesj'),

    -- Individual plugins
    require('plugins/nvim-lspconfig'),
    require('plugins/nvim-dap'),
    require('plugins/nvim-cmp'),
    require('plugins/nvim-treesitter'),
    require('plugins/luarocks'),
},
    {
        ui = {icons = {}},
    }
)

