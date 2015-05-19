require_relative 'summable'

# Ho riaperto la classe array!
# ora Array ha il metodo sum.
class Array
  include Summable
end