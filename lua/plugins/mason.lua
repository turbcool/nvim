-- Customize Mason

---@type LazySpec
return {
  -- 1) Stop mason-lspconfig from ensuring "omnisharp"
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      if opts.ensure_installed then
        opts.ensure_installed = vim.tbl_filter(function(server)
          return server ~= "omnisharp"
        end, opts.ensure_installed)
      end
    end,
  },
  -- 2) Stop mason-tool-installer from ensuring "omnisharp"
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      if opts.ensure_installed then
        opts.ensure_installed = vim.tbl_filter(function(tool)
          return tool ~= "omnisharp"
        end, opts.ensure_installed)
      end
    end,
  },
}
