local ls = require("luasnip")
local snippet = ls.snippet
local text = ls.text_node

return {
  snippet(
    "def",
    text({
      "import lombok.AccessLevel;",
      "import lombok.experimental.FieldDefaults;",
      "",
      "@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)",
    })
  ),
}
