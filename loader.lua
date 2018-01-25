local debug   = require "debug"

function script_path()
  str = debug.getinfo(1, "S").source:sub(2)
  return str:match("(.*/)")
end

__DIR__ = script_path()
__DIR_SEPARATOR__ = package.path:match( "(%p)%?%." )

dofile(__DIR__.."/modules/protobuf.lua")