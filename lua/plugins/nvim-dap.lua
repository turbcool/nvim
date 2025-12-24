return {
  "mfussenegger/nvim-dap",
  opts = function(_, opts)
    -- Get the dap module safely
    local dap = require("dap")
    
    if dap.configurations.cs then
      for _, config in ipairs(dap.configurations.cs) do
        config.console = "integratedTerminal"
      end
    end
    
    return opts
  end,
}

