return {
    'akinsho/toggleterm.nvim',
    version = "*",
    keys={"<C-\\>"},
    config = function()
        local toggleterm = require("toggleterm")

        toggleterm.setup{
            open_mapping = "<C-\\>",
        }

        local trim_spaces = true
        vim.keymap.set({"v", "n"}, "<leader><CR>", function()
            toggleterm.send_lines_to_terminal(
                "visual_lines",
                trim_spaces,
                { args = vim.v.count })
        end)
    end,
}
