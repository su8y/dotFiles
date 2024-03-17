return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    priority = 100,
    window = {
      width = 30,
      mappings = {
        ["<space>"] = false,
        ["<S-r>"] = "refresh", -- Rename
        o = "open",
        -- O = "system_open",
        -- l = "child_or_open",
      },
    },
    filesystem = {
      group_empty_dirs = true, -- when true, empty folders will be grouped together
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
      follow_current_file = { enabled = true }, -- when true, the cursor will be on the current file
    },
  },
}
