require("config.options") -- Load general options
require("config.keymaps") -- Load general keymaps
require("config.lazy") -- Load lazy package manager has to be loaded after keymaps are set (leader)

-- load colorscheme
vim.cmd.colorscheme("github_dark_default")

-- LSP configuration

-- pyright
vim.lsp.config("pyright", {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
})

-- ruff
vim.lsp.config("ruff", {
  trace = 'messages',
  init_options = {
    settings = {
      logLevel = 'info',
    }
  }
})

vim.lsp.enable 'pyright'
vim.lsp.enable 'ruff'
