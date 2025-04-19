-- lua table of my own custom snippets
return {
	require("luasnip").snippet({ trig = "hi" }, { t("Hello, world!") }),
	require("luasnip").snippet({ trig = "foo" }, { t("Another snippet.") }),
	require("luasnip").snippet({ trig = "seb" }, { t("Sebastian wrote this snippet.") }),
}
