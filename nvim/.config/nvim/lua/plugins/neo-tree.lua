-- This plugin is for the file browser using vim pack
return {
    addon = {
        {src = 'https://github.com/nvim-neo-tree/neo-tree.nvim' },
        { src = 'https://github.com/nvim-lua/plenary.nvim' },
        { src = 'https://github.com/MunifTanjim/nui.nvim' },
        { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    },
    setup = function()
        require('neo-tree').setup({
            close_if_last_window = false,
            popup_border_style = 'rounded',
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                indent = {
                    with_expanders = true,
                },
            },
            git_status = {
                symbols = {
                    -- Change type
                    added     = "✚", -- NOTE: you can set any of these to an empty string to not show them
                    deleted   = "✖",
                    modified  = "",
                    renamed   = "",
                    -- Status type
                    untracked = "",
                    ignored   = "",
                    unstaged  = "",
                    staged    = "",
                    conflict  = "",
                },
                align = "right",
            },
            filesystem = {
                filtered_items = {
                    visible = false,
                    hide_dotfiles = true,
                    hide_gitignored = true,
                },
                follow_current_file = {
                    enabled = true,
                },
            },
        })
    end,
}
