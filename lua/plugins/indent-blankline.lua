return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    -- Kind of messy but it works
    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IndentBlanklineUnfocused", { fg = "#1d1f21" })
      vim.api.nvim_set_hl(0, "IndentBlanklineFocused", { fg = "#404447" })
    end)
    require("ibl").setup({
      -- indent = { highlight = { "IndentBlanklineUnfocused" } },
      -- scope = { highlight = { "IndentBlanklineFocused" } },
    })
  end,
}
