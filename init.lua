require('Format')
require('keymaps')
require('plugin')
local check=function(x)
    return vim.fn.has(x)==1
end

local is_mac = check "macunix"
local is_win = check "win32"

if is_mac then
    require('Mac')
end

if is_win then
    require('Window')
end
