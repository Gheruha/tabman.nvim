-- Main Module
local M = {}

-- Function to "start" the plugin
function M.start()
  print("Hello from tabman.")
end

-- Function to set up the plugin
function M.setup()
  -- merge user options with defaults
  opts = opts or {}

  -- user commands:
  vim.api.nvim_create_user_command("Tabman", M.start, {})

  -- key mapping
  local keymap = opts.keymap or "<S-t>"

  vim.keymap.set("n", keymap, M.start, {
    desc = "Starting the tabman.",
    silent = true,
  })
end

return M
