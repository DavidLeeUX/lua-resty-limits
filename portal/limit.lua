

function qpsLimit() 
	local limits = require("limitlib.limit_count")
local zone = ngx.var.server_name
local key = ""
local qps = 280
local exprie = 1
	local limits = limits.new()
	limits:reqs_per_range(zone,key, qps, exprie)
end
