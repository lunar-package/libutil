local class = require("./class")
local event_emitter = require("./event_emitter")
local t = require("./types")

export type EventEmitter = t.EventEmitter
export type EventEmitterListener = t.EventEmitterListener

return {
  class = class,
  eventEmitter = event_emitter,
}
