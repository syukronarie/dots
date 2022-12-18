-- https://github.com/lewis6991/impatient.nvim
-- :LuaCacheClear
-- require 'impatient'
require 'arie.plugins'
require 'arie.base'
require 'arie.highlights'
require 'arie.maps'

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('arie.macos')
end
if is_win then
  require('arie.windows')
end
