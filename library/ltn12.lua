---@meta

local _M = {}

---@alias ltn12.Source fun(): string?, string?

---@alias ltn12.Sink fun(chunk: string?, err: string?): number | nil

---@alias ltn12.StepFunc fun(src: ltn12.Source, snk: ltn12.Sink)


return _M
