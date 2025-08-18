# Notes

Book is based on Ruby 1.8.7 - the dev container has got Ruby 3.4.4. See Differences.

Starting the REPL is done with the `irb` command.

## Links

* https://www.ruby-lang.org/en/
* https://ruby-doc.org/

## Constructs

1. Print is `puts`. 
2. Assignment is with `=`. 
3. String interpolation is done as `"This outputs the value of #{variableName}"`

Everything returns a value - but the value can be `nil`.


### Fun Facts

`true` and `false` are of different classes!?

The and and or constructs exits as both `&&`/`||` and `&`/`|` - the first forms lazy 
evaluates while the single character type evaluates everything.

## Differences

Integers are now `Integer` - in the book they are `Fixnum`