local string = require("./string")
local table = require("./table")

export type Table<T> = table.Table<T>
export type Object<K, V> = table.Object<K, V>

return {
  table = table,
  string = string,
}
