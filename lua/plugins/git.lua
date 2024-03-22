return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        blame = "<Leader>gb",
        browse = "<Leader>go",
      },
    },
  },
}
