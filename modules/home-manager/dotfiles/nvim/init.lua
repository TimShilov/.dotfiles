vim.loader.enable()

require 'options'
require 'lazy-bootstrap'
require 'keymaps'

-- Path of NVChad UI
for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
  dofile(vim.g.base46_cache .. v)
end
