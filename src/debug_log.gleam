import gleam/io
import gleam/string
import gleam/result
import birl
import gleam_community/ansi
import gleam_community/colour as color

pub type Level {
  TRACE
  DEBUG
  INFO
  WARN
  ERROR
}

pub fn make_log(level: Level, msg: String) -> String {
  let gray = color.from_rgb_hex(0x55595F) 
  |> result.lazy_unwrap(fn() {panic})
  let datetime = birl.now() 
  |> birl.to_iso8601
  |> ansi.colour(gray)
  let level = level
  |> string.inspect 
  |> string.pad_left(to: 5, with: " ")
  |> case level {
    TRACE -> ansi.magenta
    DEBUG -> ansi.blue
    INFO -> ansi.green
    WARN -> ansi.yellow
    ERROR -> ansi.red
  } 
  [datetime, level, msg] |> string.join(with: " ")
}

pub fn log(level: Level, msg: anything) {
  make_log(level, msg |> string.inspect) |> io.println
}

pub fn trace(msg: anything) { log(TRACE, msg) }
pub fn debug(msg: anything) { log(DEBUG, msg) }
pub fn info(msg: anything) { log(INFO, msg) }
pub fn warn(msg: anything) { log(WARN, msg) }
pub fn error(msg: anything) { log(ERROR, msg) }
