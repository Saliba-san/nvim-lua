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

    -- Notetaking plugins
    require('plugins/notetaking/neorg'),
    require('plugins/notetaking/image-nvim'),
    require('plugins/notetaking/clipboard-image'),
    require('plugins/notetaking/diagrams'),
    require('plugins/notetaking/markdown-preview'),

    -- Individual plugins
    require('plugins/neo-tree'),
    require('plugins/telescope'),
    require('plugins/nvim-lspconfig'),
    require('plugins/nvim-cmp'),
    require('plugins/nvim-treesitter'),
    require('plugins/luarocks'),
},
    {
        ui = {icons = {}},
    }
)
