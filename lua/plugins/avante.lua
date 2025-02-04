-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- == Examples of Overriding Plugins ==
  {
    "yetone/avante.nvim",
    opts = {
      provider = "openai",
      openai = {
        endpoint = "http://ai-pc.skyori.ru:11435/v1",
        model = "deepseek-r1-54k:32b",
        timeout = 300000,
        apiKey = "ollama",
        max_tokens = 8192,
      }
    }
  },
}
