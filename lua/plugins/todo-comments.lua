return {
  "folke/todo-comments.nvim",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("todo-comments").setup {
      signs = true,
      keywords = {
        FIX = {
          icon = "",
          color = "error",
          alt = {"FIXME", "BUG", "FIXIT", "ISSUE"},
        },
        TODO = {icon = "", color = "info"},
        HACK = {icon = "", color = "warning"},
        WARN = {icon = "", color = "warning", alt = {"WARNING", "XXX"}},
        PERF = {icon = "", color = "warning", alt = {"OPTIM", "PERFORMANCE"}},
        NOTE = {icon = "", color = "hint", alt = {"INFO"}},
      },
      highlight = {
        before = "",
        keyword = "wide",
        after = "fg",
      },
      search = {
        command = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        pattern = [[\b(KEYWORDS):]],
      },
    }
  end,
}
