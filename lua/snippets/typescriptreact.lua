local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("div", {
    t({ "<div>" }),
    i(1),
    t({ "</div>" }),
  }),
  s("p", {
    t({ "<p>" }),
    i(1),
    t({ "</p>" }),
  }),
  s("h1", {
    t({ "<h1>" }),
    i(1),
    t({ "</h1>" }),
  }),
}
