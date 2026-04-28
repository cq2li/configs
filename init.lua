-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Show full path in the window title
vim.o.title = true
vim.o.titlestring = "%F" -- %F is full path of the file
-- go to file at blame branch instead of current
vim.g.gitblame_use_blame_commit_file_urls = true

vim.lsp.set_log_level("off")
vim.g.snacks_animate = false

-- Stop all LSPs from formatting on save, GL: Don't delete. Annoying af.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.documentFormattingProvider then
      client.server_capabilities.documentFormattingProvider = false
    end
  end,
})

vim.g.autoformat = false
vim.g.clipboard = 'osc52'
