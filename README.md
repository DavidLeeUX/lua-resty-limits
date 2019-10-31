# lua-resty-limits
limit nginx request every seconds base on openresty

# Use exmaple

```lua
local limits = require("resty.iresty_limits")
local limits = limits.new()

-- the rate is 80bytes/seconds, you can input 80K(means 80KB/sec) too.

-- 
ngx.say("check request is allowed: ", 
    limits:reqs_per_range(ngx.var.binary_remote_addr, ngx.var.uri, 1, 2))


lua_package_path "lua/lua-resty-limits/?.lua;";

lua_shared_dict limit_count 10m;


local qpslimit = function()
        local limits = require("limitlib.limit_count")
        local limits = limits.new()
        local zone = ngx.var.server_name
        local key = ""
        local qps = 280
        local exprie = 1
        limits:reqs_per_range(zone,key , qps, exprie)


end


qpslimit()
```


