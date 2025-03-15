---@meta

local _M = {}

---@type string
_M.VERSION = nil

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

-- Encodes a string into its escaped hexadecimal representation
---@params s string # binary string to be encoded
---@return string # escaped representation of string binary
function _M.escape(s)
end

-- Unencodes a escaped hexadecimal string into its binary representation
---@params s string # escaped hexadecimal string to be unencoded
---@return string # unescaped binary representation of escaped hexadecimal  binary
function _M.unescape(s)
end

-- Parses a url and returns a table with all its parts according to RFC 2396
-- The following grammar describes the names given to the URL parts
--
-- <url> ::= <scheme>://<authority>/<path>;<params>?<query>#<fragment>
-- <authority> ::= <userinfo>@<host>:<port>
-- <userinfo> ::= <user>[:<password>]
-- <path> :: = {<segment>/}<segment>
--
-- NOTE: the leading '/' in {/<path>} is considered part of <path>
---@param url string # uniform resource locator of request
---@param default? table # default values for each field
---@return LuaSocket.URL
function _M.parse(url, default)
end

-- Rebuilds a parsed URL from its components.
-- Components are protected if any reserved or unallowed characters are found
---@param parsed LuaSocket.URL # parsed URL, as returned by parse
---@return string # a string with the corresponding URL
function _M.build(parsed)
end

-- Builds a absolute URL from a base and a relative URL according to RFC 2396
---@param base_url string | LuaSocket.URL
---@param relative_url string
---@return string # corresponding absolute url
function _M.absolute(base_url, relative_url)
end

-- Breaks a path into its segments, unescaping the segments
---@param path string
---@return string[] segment # a table with one entry per segment
function _M.parse_path(path)
end

-- Builds a path component from its segments, escaping protected characters.
---@param parsed string[] # path segments
---@param unsafe? boolean # if true, segments are not protected before path is built
---@return string path # corresponding path stringing
function _M.build_path(parsed, unsafe)
end

return _M
