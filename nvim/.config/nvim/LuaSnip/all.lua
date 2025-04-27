-- lua table of my own custom snippets
return {
	require("luasnip").snippet({ trig = "hi" }, { t("Hello, world!") }),
	require("luasnip").snippet({ trig = "foo" }, { t("Another snippet.") }),
	require("luasnip").snippet({ trig = "seb" }, { t("Sebastian wrote this snippet.") }),
--    require("luasnip").snippet({ trig = ";a" }, { t("\\alpha") }),
}
-- understanding my abreviations
-- local ls = require("luasnip")
-- local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

