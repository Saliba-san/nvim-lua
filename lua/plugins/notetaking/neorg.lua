return {
        "nvim-neorg/neorg",
        keys = {
            {"<leader>N", "<cmd>Neorg workspace wiki<cr>", mode = "n", desc = "Goes to default workspace"},
        },
        cmd = "Neorg",
        ft = { "norg", "neorg" },
        opts = {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.highlights"] = {
                    config = {
                        highlights = {
                            headings = {
                                [1] = {
                                    prefix = '+PurpleBold',
                                    title = '+PurpleBold',
                                },
                                [2] = {
                                    prefix = '+OrangeBold',
                                    title = '+OrangeBold',
                                },
                                [3] = {
                                    title = '+YellowBold',
                                    prefix = '+YellowBold',
                                },
                                [4] = {
                                    title = '+RedBold',
                                    prefix = 'None',
                                },
                                [5] = {
                                    title = '+AquaBold',
                                    prefix = '+AquaBold',
                                },
                                [6] = {
                                    title = '+GreenBold',
                                    prefix = '+GreenBold',
                                },
                            }
                        }
                    }
                },
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            wiki = "~/Org",
                            notes = "~/Org/Notes",
                            work = "~/Org/Work",
                        },
                        default_workspace = "wiki",
                    },
                },
                ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
                ["core.integrations.nvim-cmp"] = {},
                ["core.keybinds"] = {
                    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
                    config = {
                        default_keybinds = true,
                        neorg_leader = "<Leader><Leader>",
                    },
                },
                ["core.esupports.metagen"] = {
                    config = {
                        author = "saliba",
                        type = "auto",
                        update_date = true
                    }
                },
                ["core.esupports.hop"] = {},
                ["core.esupports.indent"] = { config = {}},
                ["core.qol.toc"] = {},
                ["core.promo"] = {},
                ["core.qol.todo_items"] = {},
                ["core.looking-glass"] = {},
                ["core.export"] = {},
                ["core.export.markdown"] = { config = { extensions = "all" } },
                ["core.tangle"] = { config = { report_on_empty = false } },
                ["core.ui"] = {},
                ["core.ui.calendar"] = {},
                ["core.journal"] = {
                    config = {
                        strategy = "flat",
                        workspace = "Notes",
                    },
                },
            },
        },
        dependencies = {
            { "luarocks.nvim" },
            { "nvim-lua/plenary.nvim", },
            { "nvim-treesitter/nvim-treesitter" },
        },
        lazy = true, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        config = true,
    }
