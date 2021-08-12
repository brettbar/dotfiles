local nvim_lsp = require("lspconfig")
local map = require("utils").map
require("flutter-tools").setup{}
require("lsp_signature").setup()

nvim_lsp.omnisharp.setup{}
local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end
local function setup_servers()
  require'lspinstall'.setup()

  local servers = require'lspinstall'.installed_servers()

  for _, server in pairs(servers) do
    local config = make_config()
    require'lspconfig'[server].setup(config)
  end
end
setup_servers()

nvim_lsp.gopls.setup{}
nvim_lsp.clangd.setup{}

--nvim_lsp.omnisharp.setup{ 
  --cmd = { "/Users/sdk/.local/share/nvim/lspinstall/csharp/omnisharp/run --languageserver" }
--}
vim.cmd("let g:OmniSharp_server_use_mono = 1")

nvim_lsp.tsserver.setup{
    on_attach = function(client, bufnr)
        -- disable tsserver formatting if you plan on formatting via null-ls
        client.resolved_capabilities.document_formatting = false

        local ts_utils = require("nvim-lsp-ts-utils")

        -- defaults
        ts_utils.setup {
            debug = false,
            disable_commands = false,
            enable_import_on_completion = false,

            -- eslint
            eslint_enable_code_actions = true,
            eslint_enable_disable_comments = true,
            eslint_bin = "eslint",
            eslint_config_fallback = nil,
            eslint_enable_diagnostics = false,

            -- formatting
            enable_formatting = false,
            formatter = "prettier",
            formatter_config_fallback = nil,

            -- parentheses completion
            complete_parens = false,
            signature_help_in_parens = false,

            -- update imports on file move
            update_imports_on_move = false,
            require_confirmation_on_move = false,
            watch_dir = nil,
        }

        -- required to fix code action ranges
        ts_utils.setup_client(client)

        -- no default maps, so you may want to define some here
        --vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", {silent = true})
        --vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", {silent = true})
        --vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", {silent = true})
        --vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", {silent = true})
    end
}

vim.lsp.diagnostic["textDocument/publishDiagnostics"] = function() end

map('n','gD','<cmd>lua vim.lsp.buf.definition()<CR>')
map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n','gp','<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n','gn','<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')

map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
map('n','<leader>gc','<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
map('n','<leader>gR','<cmd>lua vim.lsp.buf.rename()<CR>')
map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')

--map('n','gd','<cmd>:Lspsaga preview_definition<CR>')
--map('n', 'gh', '<cmd>:Lspsaga lsp_finder<CR>')
--map('n', '<leader>gc', '<cmd>:Lspsaga code_action<CR>')
--map('n', '<leader>gc', '<cmd>:Lspsaga range_code_action<CR>')
--map('n','K','<cmd>:Lspsaga hover_doc<CR>')
--map('n', '<C-f>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
--map('n', '<C-b>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')
--map('n','gs','<cmd>:Lspsaga signature_help<CR>')
--map('n','gR','<cmd>:Lspsaga rename<CR>')
--map('n','gp','<cmd>:Lspsaga diagnostic_jump_prev<CR>')
--map('n','gn','<cmd>:Lspsaga diagnostic_jump_next<CR>')


--" LSP config (the mappings used in the default file don't quite work right)
--nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
--nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
--nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
--nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
--nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
--nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
--nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
--nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

--" auto-format
--autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync(nil, 100)
--autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
--autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 100)


--map('n', '<Leader>gs', '<cmd>Gstatus<CR>')  -- Git status
