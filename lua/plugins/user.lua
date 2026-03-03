-- You can also add or configure plugins by creating files in this `plugins/` folder
---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            "⎯⎯⎯ NixOS — Declarative · Reproducible · Secure ⎯⎯⎯",
          }, "\n"),
        },
      },
    },
  },
}
