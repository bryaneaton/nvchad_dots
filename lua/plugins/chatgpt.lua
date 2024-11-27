return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("chatgpt").setup({api_key_cmd = os.getenv("OPENAI_KEY"),})
  end,
}

