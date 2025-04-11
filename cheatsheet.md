# Lua Programming Language

<!--toc:start-->

- [Lua Programming Language](#lua-programming-language)
  - [Datatypes](#datatypes)
  - [Global vs local variables](#global-vs-local-variables)
  - [Tables (Associative Array) (JS objects?)](#tables-associative-array-js-objects)
  - [Functions](#functions)
  <!--toc:end-->

## Datatypes

```lua
num = 42 -- Numbers

s = 'some string' -- single quote Immutable string
t = "Double-quotes works too"

u = [[ Double brakets
        start and end
        multiline string ]]

t = nil -- undefines t (garbage collection)
someBooleanValue = true
-- only nil and false are falsy
```

<!-- INFO:-->

No `++` or `+=` type operators.

## Global vs local variables

```lua
thisIsGlobal = "something" --- variables are Global by default
local someOtherVariable = "this is local" -- local keyword

foo = someUnknownVariable   --- foo = nil now (undefined varible return nil)
```

## Tables -- (Associative Array)

Tables = Lua's _only_ compound data structure; they are associative arrays.
(JS objects like)

```lua
t = {key1 ='value1', key2 = false}

print(t.key1)  -- Prints 'value1'
print(t[key1])  -- Prints 'value1'

t.newKey = {}  -- Adds key/value pair
t.key2 = nil    -- removes key2 from table
```

`~=` --- not equals

## Functions

```lua


```

## Metatables

## Class

## Modules


