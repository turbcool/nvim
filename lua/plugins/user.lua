-- You can also add or configure plugins by creating files in this `plugins/` folder
---@type LazySpec
return {
  {
    "benlubas/neorg-interim-ls",
    ft = "norg", -- lazy load on norg files
    -- optional: no config here, Neorg will configure it
  },

  -- override neorg opts coming from the astrocommunity module
  {
    "nvim-neorg/neorg",
    opts = function(_, opts)
      local astrocore = require("astrocore")
      opts = opts or {}

      return astrocore.extend_tbl(opts, {
        -- ensure the interim-ls external module is loaded and configure it
        load = {
          ["external.interim-ls"] = {
            config = {
              completion_provider = {
                enable = true,
                documentation = true,
                categories = false,
                people = {
                  enable = false,
                  path = "people",
                },
              },
            },
          },

          -- tell Neorg to use the external lsp-completion module
          ["core.completion"] = {
            config = {
              engine = { module_name = "external.lsp-completion" },
            },
          },

          -- keep any other modules you already use (example)
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.keybinds"] = {},
          ["core.journal"] = {
            config = {
              workspace = "notes",
              strategy = "flat",
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/projects/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      })
    end,
  },
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
