return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true, -- load immediately
    config = function()
      -- Set background: "dark" or "light"
      vim.o.background = "dark"

      -- Optional: use gruvbox contrast variants: "soft", "medium", "hard"
      vim.g.gruvbox_contrast_dark = "soft"
      vim.g.gruvbox_contrast_light = "medium"

      -- Optional: enable italics for comments and keywords
      vim.g.gruvbox_italic = 1
      vim.g.gruvbox_italic_comments = 1

      -- Apply the colorscheme
      vim.cmd("colorscheme gruvbox")
    end,
  },
}
