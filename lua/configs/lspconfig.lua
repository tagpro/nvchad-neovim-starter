-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

vim.diagnostic.config({
	update_in_insert = true,
})

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "bufls",
  "dockerls",
  "docker_compose_language_service",
  "cmake",
  "eslint",
  -- "java_language_server",
  -- "kotlin_language_server",
  "jsonls",
  "marksman",
  "nextls",
  "postgres_lsp",
  "sqlls",
  "svelte",
  "tailwindcss",
  "templ",
  "tsserver",
  "gopls",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
