-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Themes:
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.color.transparent-nvim" },

  -- Editor + utils:
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.docker.lazydocker" },
  { import = "astrocommunity.note-taking.neorg" },
  { import = "astrocommunity.note-taking.global-note-nvim" },

  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.svelte" },
  --{ import = "astrocommunity.pack.cs-omnisharp" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
}
