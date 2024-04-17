-- Vim settings
require('settings')

-- Basic Keymaps
require('maps/globalmaps')

-- [[ Configure and install plugins ]]
require('install_lazy')

require('lazy').setup({
    -- Bundle of plugins
    require('plugins/categories/style'),
    require('plugins/categories/notetaking'),

    -- Individual plugins
    require('plugins/nvim-tree'),
    require('plugins/gitsigns'),
    require('plugins/telescope'),
    require('plugins/nvim-lspconfig'),
    require('plugins/nvim-cmp'),
    require('plugins/nvim-treesitter'),
    require('plugins/markdown-preview'),
    require('plugins/luarocks'),
},
    {
        ui = {icons = {}},
    }
)
