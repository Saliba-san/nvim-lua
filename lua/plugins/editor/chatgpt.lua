return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    local current_model = "gpt-4.1-mini"

    vim.api.nvim_create_user_command(
      "ChatGPTSetModel",
      function(opts)
        current_model = opts.args
        vim.notify("ChatGPT model changed to " .. current_model, vim.log.levels.INFO)
      end,
      {
        nargs = 1,
        complete = function()
          return {
            "gpt-4o",
            "gpt-4o-mini",
            "gpt-4.1-mini",
            "gpt-4.1",
            "gpt-o3",
            "gpt-o4-mini",
            "gpt-o4-mini-high",
          }
        end,
      }
    )

    vim.keymap.set("n", "<leader>gm", function()
      current_model = (current_model == "gpt-4.1-mini") and "gpt-4.1" or "gpt-4.1-mini"
      vim.notify("ChatGPT model toggled to " .. current_model, vim.log.levels.INFO)
    end, { desc = "ChatGPT: toggle model" })

    require("chatgpt").setup({
      openai_params = {
        model = function() return current_model end,
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 4095,
        temperature = 0.2,
        top_p = 0.1,
        n = 1,
      }
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim", -- optional
    "nvim-telescope/telescope.nvim"
  }
}
