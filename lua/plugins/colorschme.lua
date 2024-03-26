return {
  { "doums/darcula" },
  { "craftzdog/solarized-osaka.nvim" },
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "catppuccin",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
