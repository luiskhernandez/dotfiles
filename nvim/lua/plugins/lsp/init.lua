local status_ok, lspconfig  = pcall(require, "lspconfig")
if not status_ok then
	return
end

lspconfig.rome.setup{}
require("plugins.lsp.lsp-installer")
require("plugins.lsp.handlers").setup()
require("plugins.lsp.null-ls")


