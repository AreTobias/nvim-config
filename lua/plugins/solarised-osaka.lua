return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {},

  config = function()
    require("solarized-osaka").setup({
      transparent = true,
      terminal_colors = true,
    })
  end
}
