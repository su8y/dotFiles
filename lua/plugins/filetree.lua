return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      filesystem = {
        bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
        cwd_target = { sidebar = "tab", current = "window" },
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          force_visible_in_empty_folder = true, -- when true, hidden files will be shown if the root folder is otherwise empty
          show_hidden_count = true, -- when true, the number of hidden items in each folder will be shown as the last entry
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true, -- only works on Windows for hidden files/directories
        },
        find_by_full_path_words = false, -- `false` means it only searches the tail of a path.
        group_empty_dirs = true, -- when true, empty folders will be grouped together
        search_limit = 50, -- max number of search results when using filters
        follow_current_file = {
          enabled = true,
        }, -- This will find and focus the file in the active buffer every time
        -- the current file is changed while the tree is open.
        -- group_empty_dirs = true,
        window = {
          mappings = {
            -- ["<C-r"] = "rename",
            -- ["N"] = "add_directory", -- see 'n'
            -- ["n"] = "add", -- Create new (file). nnn would ask for 'file', 'dir' and symlinks
            --["."] = "toggle_hidden",
            --            ["<C-o>"] = "open_nofocus", -- Cant use "L" since its used to go back to the code buffer
            ["<C-t>"] = { "show_help", nowait = false, config = { title = "Sort toggles", prefix_key = "t" } }, -- Mimic nnn dialog
            ["<C-x>"] = "cut_to_clipboard", -- Delete
            --["H"] = "set_root",
            -- ["f"] = "show_file_details", -- File details
            --["h"] = "navigate_up",
            -- ["n"] = { "show_help", nowait = false, config = { title = "Create new", prefix_key = "n" } }, -- Mimic nnn dialog
            -- ["nd"] = { "add_directory", nowait = false },
            -- ["nf"] = { "add", nowait = false },
            -- ["r"] = "rename", -- Lazy rename. Since neo-tree doesn't have a batch rename function.
            ["td"] = { "order_by_diagnostics", nowait = false }, -- Not in nnn
            ["te"] = { "order_by_type", nowait = false }, -- File extension
            ["tg"] = { "order_by_git_status", nowait = false }, -- Not in nnn
            ["tm"] = { "order_by_modified", nowait = false },
            ["tn"] = { "order_by_name", nowait = false },
            ["ts"] = { "order_by_size", nowait = false },
            ["tt"] = { "order_by_created", nowait = false },
            -- ["x"] = "delete", -- Delete
          },
        },
      },
      window = {
        mappings = {
          -- ["<C-l>"] = "refresh",
          ["<S-r>"] = "rename", -- Rename
          -- ["R"] = "copy", -- To mimic nnn duplicate (C-R)
          --
          ["o"] = {
            command = "open",
            nowait = true,
          },
          -- ["O"] = {
          --   "open",
          --   nowait = true,
          -- },
        },
      },
    },
  },
}
