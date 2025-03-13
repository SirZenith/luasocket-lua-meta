---@meta

local socket = require "socket"

local M = {}
socket.http = M

---@class LuaSocket.Socket

---@alias LuaSocket.CreateFunc fun(param?: table): LuaSocket.Socket

---@class LuaSocket.HTTPRequest
---@field url string
---@field method? string
---@field headers? table<string, string>
---@field sink ltn12.Sink
---@field source? ltn12.Source
---@field step? ltn12.StepFunc
---@field target? string[] # For a request constructed from string, this will be the table used as `sink`.
---@field proxy? string
---@field redirect? boolean
---@field create? LuaSocket.CreateFunc

-- Timeout for HTTP requests.
---@type number
M.TIMEOUT = nil

-- User agent value used by HTTP requests. Default value is LuaSocket version string.
---@type string
M.USERAGENT = nil

---@class LuaSocket.HTTPSocket
---@field c LuaSocket.Socket
---@field try fun(action: function): any
local HTTPSocket = {}

---@param host string
---@param port string | number
---@param create LuaSocket.CreateFunc
---@return LuaSocket.HTTPSocket
function M.open(host, port, create)
end

-- sendrequestline sends requests line by current socket.
---@param method string # request method, case-sensitive.
---@param uri string # request URI.
---@return unknown
function HTTPSocket:sendrequestline(method, uri)
end

-- sendheaders sends header content by current socket.
---@param tosend table<string, string> # headers table. Header key in this table should either use all lower-case letter or use canonic name of header.
---@return unknown
function HTTPSocket:sendheaders(tosend)
end

-- receivestatusline reads status line from response.
---@return integer? code
---@return string status
function HTTPSocket:receivestatusline()
end

-- receiveheaders reads response headers as a table.
---@return table<string, string>? headers
---@return string? err
function HTTPSocket:receiveheaders()
end

-- receivebody reads response body to given sink.
---@param headers table<string, string> # response headers.
---@param sink? ltn12.Sink # sink object to write response body to.
---@param step? fun(src: ltn12.Source, snk: ltn12.Sink) # step function for moving data from source to sink.
---@return unknown
function HTTPSocket:receivebody(headers, sink, step)
end

-- receive09body reads HTTP/0.9 response body into given sink.
---@param status string # response status.
---@param sink ltn12.Sink # sink object to write response body to.
---@param step? fun(src: ltn12.Source, snk: ltn12.Sink) # step function for moving data from source to sink.
function HTTPSocket:receive09body(status, sink, step)
end

-- close closes inner socket.
function HTTPSocket:close()
end

-- genericform turns a URL and request body into a LuaSocket generic HTTP request.
---@return LuaSocket.HTTPRequest request
function M.genericform(url, body)
end

---@param url_or_request string | LuaSocket.HTTPRequest # a URL stirng or a request table.
---@param body? string # request body for a string request.
---@return string | number | nil result # For string request this will be response body. For table request this is a flag number indicating a success of request.
---@return integer code # response code.
---@return table<string, string> headers # response headers.
---@return string status # response status.
function M.request(url_or_request, body)
end

return M
