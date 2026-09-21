-- linking to my other lua options and keymap setups under core directory
require 'core.options'
require 'core.keymaps'
require 'core.auto-commands'

-- enabling lauguage servers from lsp directory
vim.lsp.enable({'clangd', 'lua_ls'})


------------------------------------------------------------------
----- PLUGINS
------------------------------------------------------------------
--building array of plugin files manually need to update this for each new plugin files
local plugin_files = {
    'catppuccin',
    'mason',
    'neo-tree',
    'oil',
}
local plugins = {} -- 
local addons = {} -- defining empty table to plugins source information for vim.pack 

-- Loop to generated ordered list
for _, name in ipairs(plugin_files) do
    table.insert(plugins, require('plugins.' ..name)) --building list of concatenated file names
end
-- Gabbing plugin information
for _, plugin in ipairs(plugins) do
    if plugin.addon then
        if vim.islist(plugin.addon) then
            vim.list_extend(addons, plugin.addon) -- expanding plugins with multiple src files into individual table entries
        else
            table.insert(addons, plugin.addon)
        end
    end
end

vim.pack.add(addons) -- actually using natimve vim.pack to install each plugin

-- now pulling setups from each plugin file (second item passed from each file)

for _, plugin in ipairs(plugins) do
    if plugin.setup then
        plugin.setup()
    end
end

