local class = require("./class")
local event_emitter = require("./event_emitter")
local string = require("./string")
local t = require("./types")
local table = require("./table")

export type Table<T> = t.Table<T>
export type Object<K, V> = t.Object<K, V>
export type EventEmitter = t.EventEmitter
export type EventEmitterListener = t.EventEmitterListener

return {
  table = table,
  string = string,
  class = class,
  eventEmitter = event_emitter,
}
