return {
    'ekickx/clipboard-image.nvim',
    cmd = "PasteImg",
    keys = {
        {"<leader>P", "<cmd>PasteImg<cr>", mode = {"v","n"}, desc = "Pastes image from clipboard"},
    },
    opts = {
        ['norg'] = {
            img_dir = '~/Org/Images',
            img_dir_txt = '/Org/Images',
            affix = '%s',
            img_name = function ()
                -- If in visual mode use selected text
                local mode = vim.api.nvim_get_mode().mode
                if mode == 'v' then
                    -- Recover visual selection by: `v` to exit visual mode then `gv`
                    -- (If you don't exit then gv will select your previous selection)
                    -- finally yank the the `a` register
                    vim.cmd("normal! vgv\"ay")
                    -- Evaluate contents of `a` register
                    local selection = vim.api.nvim_eval("@a")
                    -- Delete the selection (will be replaced by clipboard-image)
                    vim.cmd("normal! gvd")
                    return vim.fn.expand('%:t:r') .. "_" .. selection
                else
                    -- Prompt for name
                    vim.fn.inputsave()
                    local name = vim.fn.input('Image Name: ')
                    vim.fn.inputrestore()
                    local filename = vim.fn.expand('%:t:r')
                    if name == nil or name == '' then
                        return filename .. "_" .. os.date('%Y-%m-%d-%H-%M-%S')
                    else
                        return filename .. "_" .. name
                    end
                end
            end,
            img_handler = function(img)
                local filename = vim.fn.expand('%:t:r') .. "_"
                local tag = string.gsub(img.name, filename, '', 1)
                vim.cmd("normal! I." .. tag .. " ~")
                vim.cmd("normal! o")
            end
        },
    }
}
