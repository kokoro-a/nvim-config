return {
  keymap = {
    preset = 'default',
    ['<C-n>'] = { 'select_next', 'fallback' },
    ['<C-p>'] = { 'select_prev', 'fallback' },
    ['<CR>'] = { 'accept', 'fallback' },
    ['<Esc>'] = { 'cancel', 'fallback' },
  },
}