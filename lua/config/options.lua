local options = {
  opt = {
    relativenumber = true,
    number = true,
    -- Enable mouse mode, can be useful for resizing splits for example!
    mouse = "a",
    -- Don't show the mode, since it's already in the status line
    showmode = false,
    breakindent = true,
    -- Save undo history
    undofile = true,
    -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
    ignorecase = true,
    smartcase = true,
    -- Keep signcolumn on by default
    signcolumn = "yes",
    -- Decrease update time
    updatetime = 250,
    -- Decrease mapped sequence wait time
    -- Displays which-key popup sooner
    timeoutlen = 300,
    -- Configure how new splits should be opened
    splitright = true,
    splitbelow = true,
    -- Show which line your cursor is on
    cursorline = true,
    -- Minimal number of screen lines to keep above and below the cursor.
    scrolloff = 4,
  },

  bo = {
    tabstop = 2,
    shiftwidth = 2,
    expandtab = true,
  },

  wo = {
    wrap = false,
  },
}

for name, tab in pairs(options) do
  for k, v in pairs(tab) do
    vim[name][k] = v
  end
end

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
