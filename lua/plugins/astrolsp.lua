-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      -- make sure the table exists
      opts.servers = opts.servers or {}
      table.insert(opts.servers, "omnisharp")

      -- define an OmniSharp server
      opts.config = require("astrocore").extend_tbl(opts.config or {}, {
        omnisharp = {
          -- use NixOS-installed binary:
          cmd = {
            "OmniSharp",
            "--languageserver",
            "--hostPID",
            tostring(vim.fn.getpid()),
          },
          filetypes = { "cs", "vb" },
          -- detect the project root:
          root_dir = require("lspconfig.util").root_pattern("*.sln", "*.csproj", ".git"),
          -- any extra OmniSharp settings:
          enable_editorconfig_support = true,
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
        },
      })
    end,
  },
}
