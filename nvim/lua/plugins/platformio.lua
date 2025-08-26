return {
  "anurag3301/nvim-platformio.lua",
  dependencies = {
    "akinsho/toggleterm.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-lua/plenary.nvim",
    "folke/which-key.nvim",
  },
  config = function()
    local ok, platformio = pcall(require, "platformio")
    if ok then
      platformio.setup({
        lsp = "clangd",          -- or "ccls"
        menu_key = "<leader>\\", -- keybinding to open PlatformIO menu
      })
    end
  end,
}

