Types = sets
Classes = something multiple sets have in common
Functions = mappings between sets

addition Sum 1 <> Sum 2 <> Sum 3
multiplication Product 1 <> Product 2
concatination "one" <> "two"

- `a -> a -> a`

addition Sum 1 <> Sum 2 <> Sum 3
multiplication Product 1 <> Product 2
concatination "one" <> "two"

Class: Semigroup
Types: Sum, Product, [a]
Operation: <> `mappend`

Class: Monoid
Types: Sum, Product, [a]
Operation: <> `mappend`, mempty
