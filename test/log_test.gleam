import gleam/iterator
import gleeunit
// import gleeunit/should
import log.{trace, debug, info, warn, error}

pub fn main() {
  gleeunit.main()
}

pub fn color_test() {
  [trace, debug, info, warn, error]
  |> iterator.from_list
  |> iterator.cycle 
  |> iterator.take(10)
  |> iterator.each(fn(f) { f("testing colors") })  
  panic "for showing logs"
}

type Thing {
  This(x: Int, y: Int)
}

pub fn thing_test() {
  let thing = This(x: 1, y: 1)
  debug(thing)
  panic "for showing logs"
}
