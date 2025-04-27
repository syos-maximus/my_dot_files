return {

    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets", --vscode collection of snippets
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()
            require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"}) -- adding custom snippets from LuaSnip directory
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items. This is return
                    -- Note that <C-n> goes down in popup completions and <C-p> goes up in popup completions
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }, -- adds language server capabailities for auto fill
                    { name = "luasnip" }, -- circle back to luanap that then pull vscode friendly snippets
                }, {
                    { name = "buffer" },
                }),
            })
        end,
    },
}
