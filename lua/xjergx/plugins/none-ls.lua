return {
  'nvimtools/none-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.completion.spell,
        -- null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.diagnostics.tsc,
        null_ls.builtins.formatting.eslint,
      },
    }
    -- vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format buffer" })
    -- vim.keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
    -- vim.keymap.set("n", "<leader>gp", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
    -- vim.keymap.set("n", "<leader>gl", vim.diagnostic.open_float, { desc = "Show diagnostic" })
    -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
    -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    -- vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename" })
    -- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover" })
    -- vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
  end,
}
