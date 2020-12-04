-- Attempt to describe what a Monoid is:
-- I describe combining laws for a combinalble type, a type
-- that uses the Combinalbe blueprint. A combinable needs a way to combine
-- its self and a data constructor that when combinded with one the data
-- contructors that represent something products that data construtor that
-- has something.
--
-- Associativity which is a propert of the combiner, should is needed but
-- not enforced by the the compiler. "How do you enforce property laws"

class Combinable a where
  combiner :: a -> a -> a
  samenessProducer :: a

instance Combinable [a] where
  combiner = (++)
  samenessProducer = []