-- This does autocompletions with both LSP and custom snippets

-- lua/plugins/blink.lua
-- Autocompletion with blink.cmp

return {
    addon = {
        { src = 'https://github.com/rafamadriz/friendly-snippets' },
        { src = 'https://github.com/saghen/blink.cmp', version = 'v1.*' },
    },
    setup = function()
        require('blink.cmp').setup({
            -- Show completion menu as you type
            completion = {
                trigger = {
                    show_on_keyword = true,
                    show_on_trigger_character = true,
                },
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = false,
                    },
                },
                accept = {
                    auto_brackets = {
                        enabled = true,
                    },
                },
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 500,
                },
            },

            -- Keymap: manual accept, no auto-accept
            keymap = {
                preset = 'default',
                ['<CR>'] = { 'accept', 'fallback' },
                ['<Tab>'] = { 'select_next', 'fallback' },
                ['<S-Tab>'] = { 'select_prev', 'fallback' },
                ['<C-e>'] = { 'hide', 'fallback' },
                ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            },

            -- Sources: LSP, snippets, buffer, path
            sources = {
                default = { 'lsp', 'snippets', 'buffer', 'path' },
                providers = {
                    snippets = {
                        opts = {
                            search_paths = {
                                vim.fn.stdpath('config') .. '/snippets',
                            },
                        },
                    },
                },
            },

            -- Use built-in snippet expansion
            snippets = {
                preset = 'default',
            },

            -- Signature help
            signature = {
                enabled = true,
            },
        })
    end,
}

