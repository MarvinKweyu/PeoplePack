# People

![Test workflow](https://github.com/MarvinKweyu/PeoplePack/actions/workflows/elixir.yml/badge.svg?branch=main)

A people mix project


To run
```bash
iex -S mix
```

To enable routes, run the below on the shell that ensues:
```bash
Plug.Cowboy.http People.Router, []
```

## Running tests

```bash
mix test
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `people` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:people, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/people>.

