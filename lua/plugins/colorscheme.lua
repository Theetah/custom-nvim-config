return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  "rebelot/kanagawa.nvim",
  priority = 1000,
  opts = {
    overrides = function()
      return {
        CursorLine = { bg = "#272733" },
      }
    end,
  },
  init = function()
    vim.cmd.colorscheme("kanagawa")
    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
  end,
}
