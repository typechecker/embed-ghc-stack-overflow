# embed-ghc-stack-overflow

Reproduction for [ghc#23313](https://gitlab.haskell.org/ghc/ghc/-/issues/23313).

I generate the data file with `gvim data/big.csv` with the vim command
`:0put=range(1,100000)`.

The problem is seen only on the `ghc-9.4.*` versions. I've not seen it with
`ghc-9.2.7`, `ghc-8.10.7` or `ghc-9.6.1`. Only fails if optimization is off
(with `-O0`). To keep the data file small for the reproducer, I've shrunk the
stack size to 16M, down from the default (ghc is compiled with
`-with-rtsopts=-K512M`).
