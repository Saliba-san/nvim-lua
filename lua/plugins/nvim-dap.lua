return {
    'mfussenegger/nvim-dap',
    keys={"<M-p>","<M-b>","<M-B>"},
    dependencies = {
        "williamboman/mason.nvim",
        'jay-babu/mason-nvim-dap.nvim',
        'theHamsta/nvim-dap-virtual-text',
        'nvim-neotest/nvim-nio',
        'rcarriga/nvim-dap-ui'
    },
    config = function ()
        local dap = require "dap"
        require ('mason-nvim-dap').setup({
            ensure_installed = {'python', 'lua', 'bash'},
            handlers = {}
        })

        local ui = require "dapui"
        ui.setup()

        require("nvim-dap-virtual-text").setup({})
        vim.keymap.set("n", "<M-b>", dap.toggle_breakpoint)
        vim.keymap.set("n", "<M-B>", function()
            local condition = vim.fn.input("Breakpoint condition: ")
            require("dap").set_breakpoint(condition)
        end)
        vim.keymap.set("n", "<M-g>b", dap.run_to_cursor)
        -- Eval var under cursor
        vim.keymap.set("n", "<M-k>", function()
            require("dapui").eval(nil, { enter = true })
        end)
        vim.keymap.set("n", "<M-p>", dap.continue)
        vim.keymap.set("n", "<M-i>", dap.step_into)
        vim.keymap.set("n", "<M-I>", dap.step_out)
        vim.keymap.set("n", "<M-n>", dap.step_over)
        vim.keymap.set("n", "<M-N>", dap.step_back)
        vim.keymap.set("n", "<M-r>", dap.restart)

        vim.fn.sign_define('DapBreakpoint', { text='', texthl='red', linehl='red', numhl='red' })
        vim.fn.sign_define('DapBreakpointCondition', { text='', texthl='red', linehl='red', numhl='red' })
        vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='red', linehl='red', numhl= 'red' })
        vim.fn.sign_define('DapLogPoint', { text='', texthl='cyan', linehl='cyan', numhl= 'cyan' })
        vim.fn.sign_define('DapStopped', { text='', texthl='green', linehl='green', numhl= 'green' })

        dap.listeners.before.attach.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            ui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            ui.close()
        end

    end
}
