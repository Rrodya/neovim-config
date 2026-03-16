-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    { '<leader>E', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      -- При открытии дерева — сразу показывать текущий файл и его соседей
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = 'open_current',
      filtered_items = {
        hide_dotfiles = false, -- показывать .gitignore, .env и т.п.
      },
      window = {
        mappings = {
          ['<CR>'] = 'open',
          ['o'] = 'open',
          ['v'] = 'open_vsplit',
          ['s'] = 'open_split',
          ['a'] = 'add', -- создать файл/папку в текущей директории
          ['d'] = 'delete', -- удалить
          ['r'] = 'rename', -- переименовать
          ['<esc>'] = 'close_window',
          ['q'] = 'close_window',
        },
      },
    },
  },
}
