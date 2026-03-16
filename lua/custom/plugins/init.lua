-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- Удобное переключение между буферами
  {
    'nvim-telescope/telescope.nvim',
    keys = {
      -- Tab для переключения буферов
      { '<Tab>', '<cmd>bnext<cr>', desc = 'Next buffer', mode = 'n' },
      { '<S-Tab>', '<cmd>bprevious<cr>', desc = 'Previous buffer', mode = 'n' },
    },
  },

  -- Настройка Blink.cmp: Tab принимает как в VS Code
  {
    'saghen/blink.cmp',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = 'none',
        -- Tab: принимает подсказку
        ['<Tab>'] = { 'accept', 'fallback' },
        -- Стрелки для навигации
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        -- Ctrl+n/p тоже навигация
        ['<C-n>'] = { 'select_next', 'fallback' },
        ['<C-p>'] = { 'select_prev', 'fallback' },
        -- Ctrl+e закрывает меню
        ['<C-e>'] = { 'hide', 'fallback' },
        -- Enter тоже принимает
        ['<CR>'] = { 'accept', 'fallback' },        
      },      
    },
  },
}
