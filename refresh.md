# Refresher — For when you're returning to Lua after a break

## Running lua - shortcuts

- `<leader> pr` - play current lua file (originally from `play rust`) <!-- NOTE:  Doesn't work with module -->
- `<leader> x` - play selected text (visual mode)

## Standards

1. package manager - `luarocks`
2. Naming convention - try **snake_case** for now

## Lua quirks

### oh okay !!!

1. No `++` or `+=` type operators.
2. `~=` is not equals., there is no `!` in lua (lua has `not` though), `..` is concat for string, not `+`
3. Variables are global by default
4. Functions are first class values
5. Lua has only one compound data structure, **Tables**: they are associative arrays. **Tables** can be heterogenous
6. Index starts at 1 not 0
7. `#` is used for size. `#{table}` = size of table (works only for ipairs, i think)
8. set value as nil to remove item from table
9. `M.method(self)` is same as `M:method()`
10. ... = Varargs (variable number of args)
11. The metatable is a normal table with keys that Lua knows about, like `__add`. Setting metatable to table: `setmetatable(targettable, metatable)`

### Cool Cool !!!

1. Lua can call (and manipulate) functions written in _Lua_ and functions written in _C_. [Source](https://www.lua.org/manual/5.4/manual.html#3.4.10)

## Resource

1. [Reference Manuals](https://www.lua.org/manual/)
