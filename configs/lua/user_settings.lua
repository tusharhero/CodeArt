-- Functions for make mapping easier.
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function wk_add(mappings, options)
  table.insert(extra_which_keys, { mappings, options })
end

extra_which_keys = {}

disable_plugins = {
  tokyonight = false,
  nightfly = false,
  moonfly = false,
  nord = false,
  onedark = false,
  nvim_enfocado = false,
  truezen = false,
  indent_blankline = false,
  nvim_web_devicons = false,
  nvim_tree = false,
  nvim_bufferline = false,
  lualine = false,
  better_escape = false,
  treesitter = false,
  nvim_colorizer = false,
  dashboard_nvim = false,
  telescope_fzf_native = false,
  telescope_find_directories = false,
  telescope = false,
  nvim_lspconfig = false,
  lsp_installer = false,
  friendly_snippets = false,
  nvim_cmp = false,
  cmp_buffer = false,
  cmp_path = false,
  cmp_nvim_lsp = false,
  luasnip = false,
  cmp_luasnip = false,
  cmp_nvim_lua = false,
  lsp_signature = false,
  nvim_dap = false,
  dap_install = false,
  nvim_dap_ui = false,
  neoformat = false,
  vista = false,
  toggleterm = false,
  fugitive = false,
  gitsigns = false,
  autopairs = false,
  nvim_ts_autotag = false,
  scrollview = false,
  neoscroll = false,
  todo_comments = false,
  which_key = false,
  mkdir = false,
  kommentary = false,
  ts_context_commentstring = false,
  vim_matchup = false,
  vim_resize = false,
}

additional_plugins = {
  -- You can put your additional plugins here.
  -- Syntax is like normal packer.nvim Syntax.
  -- If you need to set some settings for your plugins
  -- you must put configs in config = function() like below examples

  -- { "famiu/feline.nvim", branch = "develop" },

  -- "mhartington/formatter.nvim",

  -- { crispgm/nvim-go", ft = "go" },

  --[[ {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    run = ":call mkdp#util#install()",
    config = function ()
      vim.g.mkdp_auto_close = 0
    end
  },

  {
    "andweeb/presence.nvim",
    config = function ()
      require("presence"):setup({
      log_level           = "info", -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout    = 5,   -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      blacklist           = {},  -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      })
    end
  } ]]
}

-- Other settings here
-- For examples for disabling line number:
-- vim.opt.number = false
-- vim.opt.relativenumber = false

-- Or for changing terminal toggle mapping:
-- first argument is mode of mapping. second argument is keymap.
-- third argument is command. and last argument is optional argument like {expr = true}.
-- map("n", "<C-t>", ":ToggleTerm<CR>")
-- map("t", "<C-t>", ":ToggleTerm<CR>")

-- This is example of how to make keymap and add it to
-- which_keys(that pop of window on bottom of NeoVim that help you to find keymaps)
-- This will make new group of keymaps names Something with two commands and they're describtions.
-- with pressing `<leader> + s` you can trigger which keys to show you
-- Something commands. with pressing e it will echo hello on command prompt at the end of NeoVim
-- and with pressing f it will echo Goodbye on command prompt at the end of NeoVim
--[[ wk_add(
  { s = {
    name = "Something",
    e = { ":echo 'Hello'<CR>", "Echo Hello" },
    f = { ":echo 'Goodbye'<CR>", "Echo Goodbye" },
  }},
  { prefix = "<leader>" }
)]]

user_lualine_style = 1 -- You can choose between 1, 2, 3, 4 and 5
user_indent_blankline_style = 1 -- You can choose between 1, 2, 3, 4,5 and 6

-- Settings colorscheme on CodeArt is exactly like normal neovim.
-- you must just install plugin and use this function.
-- This is example with one of default CodeArt colorschemes
vim.cmd("colorscheme enfocado")
