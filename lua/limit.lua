local limits = require("resty.limit_count")
local limits = limits.new()
limits:reqs_per_range(ngx.var.server_name, "", 1, 2)