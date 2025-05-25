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
    require('plugins/notetaking/image-nvim'),
    require('plugins/notetaking/clipboard-image'),
    require('plugins/notetaking/diagrams'),
    require('plugins/notetaking/markdown-preview'),

    -- Navigation plugins
    require('plugins/navigation/neo-tree'),
    require('plugins/navigation/telescope'),
    require('plugins/navigation/project'),
    require('plugins/navigation/toggleterm'),

    -- Editor Plugins
    require('plugins/editor/nvim-various-textobjs'),
    require('plugins/editor/treesj'),
    require('plugins/editor/chatgpt'),
    require('plugins/editor/git'),

    -- Individual plugins
    require('plugins/nvim-lspconfig'),
    require('plugins/nvim-dap'),
    require('plugins/nvim-cmp'),
    require('plugins/nvim-treesitter'),
    require('plugins/luarocks'),
    require('plugins/tidal'),
},
    {
        ui = {icons = {}},
    }
)

