# debug_log

[![Package Version](https://img.shields.io/hexpm/v/debug_log)](https://hex.pm/packages/debug_log)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/debug_log/)

```sh
gleam add debug_log
```

```gleam
import debug_log as log

type Thing {
    This(x: Int, y: Int)
}

pub fn main() {
    log.info("just like io.debug")

    let thing = This(x: 1, y: 1)
    log.debug(thing)
}
```

Further documentation can be found at <https://hexdocs.pm/debug_log>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
