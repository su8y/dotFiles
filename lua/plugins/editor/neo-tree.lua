return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    filesystem = {
      group_empty_dirs = true, -- when true, empty folders will be grouped together
    },
    window = {
      mappings = {
        ["<space>"] = "none",
        ["<S-r>"] = "rename", -- Rename
        ["o"] = {
          command = "open",
          nowait = true,
        },
      },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files<MY>" },
      { "<leader>ft", "<cmd>Telescope todo-comments<cr>", desc = "Find Todo<MY>" },
    },
  },
}
