return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
        ["<c-b>"] = { "fallback" },
        ["<c-d>"] = { "scroll_documentation_down", "fallback" },
        ["<c-f>"] = { "fallback" },
        ["<c-u>"] = { "scroll_documentation_up", "fallback" },
        ["<cr>"] = { "accept", "fallback" },
      },
    },
  },
}
