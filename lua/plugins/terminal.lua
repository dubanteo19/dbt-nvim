return {
  "rebelot/terminal.nvim",
  config = function()
    require("terminal").setup()
    local term_map = require("terminal.mappings")
    vim.keymap.set("n", "<leader>to", term_map.toggle)
    vim.keymap.set("n", "<leader>tk", term_map.kill)
    vim.keymap.set("n", "<leader>tc", term_map.close)
    vim.keymap.set("n", "<leader>tr", term_map.run)
  end,
}
