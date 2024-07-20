export type Table<T> = { T }
export type Object<K, V> = { [K]: V }

export type EventEmitterListener = (...any) -> ()

export type EventEmitterPrototype = { connections: { [string]: { EventEmitterListener } } }

export type EventEmitterImpl = {
  _ev: (EventEmitter, string) -> { EventEmitterListener },
  _getEv: (EventEmitter, string) -> { EventEmitterListener },
  addListener: <T...>(EventEmitter, string, (T...) -> ()) -> EventEmitter,
  on: <T...>(EventEmitter, string, (T...) -> ()) -> EventEmitter,
  once: <T...>(EventEmitter, string, (T...) -> ()) -> (),
  emit: <T...>(EventEmitter, string, T...) -> EventEmitter,
  removeListener: <T...>(EventEmitter, string, ((T...) -> ())?) -> EventEmitter,
  listenerCount: <T...>(EventEmitter, string) -> number,
}

export type EventEmitter = EventEmitterPrototype & EventEmitterImpl

return "util.types"
