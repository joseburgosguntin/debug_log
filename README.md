# log

[![Package Version](https://img.shields.io/hexpm/v/log)](https://hex.pm/packages/log)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/log/)

```sh
gleam add log
```

```gleam
import log

type Thing {
    This(x: Int, y: Int)
}

pub fn main() {
    log.info("just like io.debug")

    let thing = This(x: 1, y: 1)
    log.debug(thing)
}
```

Further documentation can be found at <https://hexdocs.pm/log>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
