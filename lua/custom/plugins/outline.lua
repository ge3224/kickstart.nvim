return {
  "stevearc/aerial.nvim",
  config = function()
    require("aerial").setup {
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,

      vim.keymap.set("n", "<leader>to", "<cmd>AerialToggle!<CR>"),

      layout = {
        min_width = { 20 },
      },
    }
  end,
  -- opts = {},
  -- keys = {
  --   {
  --     '<leader>to',
  --     '<cmd>AerialToggle!<CR>',
  --     desc = 'Toggle Code Outline',
  --   },
  -- },
  -- dependencies = {
  --   'nvim-treesitter/nvim-treesitter',
  --   'nvim-tree/nvim-web-devicons',
  -- },
}
