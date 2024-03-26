return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      local copilotSug = require("copilot.suggestion")
      vim.keymap.set("i", "<M-Down>", function()
        copilotSug.next()
      end, { silent = true })
      vim.keymap.set("i", "<M-Up>", function()
        copilotSug.prev()
      end, { silent = true })
      vim.keymap.set("i", "<M-Right>", function()
        copilotSug.accept_word()
      end, { silent = true })
      vim.keymap.set("i", "<M-S-Right>", function()
        copilotSug.accept_line()
      end, { silent = true })

      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
        },
        suggestion = {
          enble = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-CR>",
          },
        },
      })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      disable_extra_info = "no",
      show_help = "yes",
      quiet = "yes",
    },
    build = function()
      vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,

    event = "VeryLazy",
    keys = {
      -- {
      --   "<leader>ccb",
      --   function(_, opts)
      --     local Menu = require("nui.menu")
      --     local event = require("nui.utils.autocmd").event
      --
      --     local popup_options = {
      --       relative = "cursor",
      --       position = {
      --         row = 1,
      --         col = 0,
      --       },
      --       border = {
      --         style = "rounded",
      --         text = {
      --           top = "[Choose Item]",
      --           top_align = "center",
      --         },
      --       },
      --       win_options = {
      --         winhighlight = "Normal:Normal",
      --       },
      --     }
      --
      --     local menu = Menu(popup_options, {
      --       lines = {
      --         Menu.separator("Group One"),
      --         Menu.item("Item 1"),
      --         Menu.item("Item 2"),
      --         Menu.separator("Group Two", {
      --           char = "-",
      --           text_align = "right",
      --         }),
      --         Menu.item("Item 3"),
      --         Menu.item("Item 4"),
      --       },
      --       max_width = 20,
      --       keymap = {
      --         focus_next = { "j", "<Down>", "<Tab>" },
      --         focus_prev = { "k", "<Up>", "<S-Tab>" },
      --         close = { "<Esc>", "<C-c>" },
      --         submit = { "<CR>", "<Space>" },
      --       },
      --       on_close = function()
      --         print("CLOSED")
      --       end,
      --       on_submit = function(item)
      --         print("SUBMITTED", vim.inspect(item))
      --       end,
      --     })
      --     menu.mount()
      --   end,
      --   desc = "CopilotChat - Open chat",
      -- },

      { "<leader>ccb", ":CopilotChatBuffer ", desc = "CopilotChat - Chat with current buffer" },
      {
        "<leader>ccf",
        "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Fix diagnostic",
        mode = { "v", "n" },
      },

      {
        "<leader>cce",
        "<cmd>CopilotChatExplain<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Explain code",
        mode = { "v", "n" },
      },
      {
        "<leader>cco",
        "<cmd>CopilotChatOptimize<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Optimize code",
        mode = { "v", "n" },
      },
      {
        "<leader>ccd",
        "<cmd>CopilotChatDocs<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Docs code",
        mode = { "v", "n" },
      },
      {
        "<leader>cct",
        "<cmd>CopilotChatTest<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Test code",
        mode = { "v", "n" },
      },
      {
        "<leader>ccr",
        "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
        desc = "CopilotChat - Reset chat history and clear buffer",
      },
      {
        "<leader>ccT",
        "<cmd>CopilotChatVsplitToggle<cr>",
        desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
      },
      {
        "<leader>ccv",
        ":CopilotChatVisual ",
        mode = "x",
        desc = "CopilotChat - Open in vertical split",
      },
      {
        "<leader>ccx",
        ":CopilotChatInPlace<cr>",
        mode = "x",
        desc = "CopilotChat - Run in-place code",
      },
    },
  },
}
