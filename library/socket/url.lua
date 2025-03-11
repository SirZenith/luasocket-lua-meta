---@meta

local socket = require "socket"

local _M = {}
socket.url = _M

---@class LuaSocket.URL
---@field scheme? string
---@field authority? string
---@field userinfo? string
---@field user? string
---@field password? string
---@field host? string
---@field port? string
---@field path? string
---@field params? string
---@field query? string
---@field fragment? string

return _M
