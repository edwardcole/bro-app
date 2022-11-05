local pg = require "pgsql" -- Load PostgreSQL Lua Bindings

local cinfo = "host=localhost port=5432 user=bro password=corroornisism"

local conn=pg.connectdb(cinfo)
if conn:status() == pg.CONNECTION_OK then
   print"Done"
else
   print("status",conn:status())
   print("error",conn:errorMessage())
end

conn:finish()