return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    ft = "cs",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
    },
    config = function()
      require("easy-dotnet").setup({
        picker = "snacks",
        test_runner = {
          viewmode = "float",
          noBuild = false,
        },
      })
    end,
  },
}

