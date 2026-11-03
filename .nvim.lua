-- Enable pencil automatically for prose-like buffers in this project
vim.cmd([[
  augroup ProjectPencil
    autocmd!
    autocmd FileType markdown,text,rst SoftPencil
  augroup END
]])

-- Customize text width or wrapping behavior locally for this project
vim.b['pencil#textwidth'] = 80
vim.g['pencil#wrapModeDefault'] = 'soft'

