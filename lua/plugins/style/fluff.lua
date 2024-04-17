return {
    { 'NvChad/nvim-colorizer.lua',
        opts = {
            user_default_options={
                mode='foreground',
                names=true,
            }
        }
    },
    {
        'lewis6991/gitsigns.nvim',
        opts = {
          signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
        }
    }
}
