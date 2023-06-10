# How to convert all symbols in the ruby symbol table to strings

# use map to convert each symbol to string
def convert_symbols_to_strings
  Symbol.all_symbols.map(&:to_s)
end

puts convert_symbols_to_strings.include?('convert_symbols_to_strings')

# ruby automatically convert function names to symbols,
# because symbols are inmutable and unique data type,
# while strings are mutable.
# ruby also allows strings to be used as funcion names,
# depending on the specific use case.

# we first convert all symbols to strings because
# if we do:
# Symbol.all_symbols.include?(:convert_symbols_to_strings)
# automatically be true, although the symbol does not exist before
# this is because ruby create the symbol :convert_symbols_to_strings instead
# of just check if exist
