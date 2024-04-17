return {
    'ekickx/clipboard-image.nvim',
    opts = {
        ['norg'] = {
            img_dir = os.getenv("HOME") .. '/Org/Images',
            img_dir_txt = 'Images',
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
                    return vim.fn.expand('%:r') .. "_" .. selection
                else
                    -- Prompt for name
                    vim.fn.inputsave()
                    local name = vim.fn.input('Image Name: ')
                    vim.fn.inputrestore()
                    local filename = vim.fn.expand('%:t:r')
                    return filename .. "_" .. name
                end
            end,
            img_handler = function(img)
                local filename = vim.fn.expand('%:t:r') .. "_"
                local tag = string.gsub(img.name, filename, '', 1)
                vim.cmd("normal! I." .. tag .. " ")
                vim.cmd("normal! o")
            end
        },
    }
}
