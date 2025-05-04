local keymaps = require("key")
return {
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/usr/lib/jvm/java-21-openjdk-amd64",
            default = true,
          },
        },
      },
    },
  },
  on_attach = function(client, bufnr)
    keymaps.set_lsp_keymaps(bufnr)
    vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
  end,
}

