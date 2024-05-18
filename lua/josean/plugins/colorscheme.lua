return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()

  require('onedark').setup  {
    -- Main options --
    style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {
        LineNr = { fg = '#abb2bf', bg = 'NONE', style = 'NONE' }, -- Line number color
        CursorLineNr = { fg = '#dbe1ed', bg = 'NONE', style = 'NONE' }, -- Cursor line number color
        VertSplit = { fg = '#2a2e36', bg = 'NONE', style = 'NONE' }, -- Vertical split color
        Visual = { fg = 'NONE', bg = '#3e4452', style = 'NONE' }, -- Visual selection color
        VisualNOS = { fg = 'NONE', bg = '#3e4452', style = 'NONE' }, -- Visual selection color when vim is "Not Owning the Selection"
        Search = { fg = 'NONE', bg = '#3e4452', style = 'NONE' }, -- Search highlight color
        IncSearch = { fg = 'NONE', bg = '#3e4452', style = 'NONE' }, -- Incremental search highlight color
        MatchParen = { fg = 'NONE', bg = '#3e4452', style = 'NONE' }, -- Highlight matching parenthesis
        Pmenu = { fg = '#abb2bf', bg = '#2a2e36', style = 'NONE' }, -- Popup menu foreground color
        PmenuSel = { fg = '#282c34', bg = '#61afef', style = 'NONE' }, -- Popup menu selection color
        PmenuSbar = { fg = 'NONE', bg = '#2a2e36', style = 'NONE' }, -- Popup menu scrollbar color
        PmenuThumb = { fg = 'NONE', bg = '#61afef', style = 'NONE' }, -- Popup menu scrollbar thumb color
        NormalFloat = { fg = '#abb2bf', bg = '#2a2e36', style = 'NONE' }, -- Normal floating window color
        FloatBorder = { fg = '#4b5263', bg = 'NONE', style = 'NONE' }, -- Floating window border color
        comments = { fg = '#5c6370', bg = '#FF0000', style = 'italic' }, -- Comment color
        keywords = { fg = '#61afef', bg = 'NONE', style = 'bold' }, -- Keyword color
    }, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
  }

    vim.cmd("colorscheme onedark")
  end,
}
