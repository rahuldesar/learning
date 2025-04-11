f1 = { a = 1, b = 2 }
f2 = { a = 2, b = 3 }

-- WARN: This fails here, Metatable will help with that
-- s = f1 + f2

-- Metatable is just a table
metafraction = {}

-- Info: __add is +
function metafraction.__add(f1, f2)
	sum = {}
	sum.b = f1.b * f2.b
	sum.a = f1.a * f2.b + f2.a * f1.b
	return sum
end

-- Attaching metatable to target_table
setmetatable(f1, metafraction)
setmetatable(f2, metafraction)

s = f1 + f2 -- INFO: Works now

defaultFavs = { animal = "gru", food = "donuts" }
myFavs = { food = "pizza" }
-- An __index on a metatable overloads dot lookups:
setmetatable(myFavs, { __index = defaultFavs })
eatenBy = myFavs.animal -- INFO: Works due to metatable even though myFavs doesn't have `animal`

-- INFO: ================= REFERENCES =========================
-- __add(a, b)                     for a + b
-- __sub(a, b)                     for a - b
-- __mul(a, b)                     for a * b
-- __div(a, b)                     for a / b
-- __mod(a, b)                     for a % b
-- __pow(a, b)                     for a ^ b
-- __unm(a)                        for -a
-- __concat(a, b)                  for a .. b
-- __len(a)                        for #a
-- __eq(a, b)                      for a == b
-- __lt(a, b)                      for a < b
-- __le(a, b)                      for a <= b
-- __index(a, b)  <fn or a table>  for a.b
-- __newindex(a, b, c)             for a.b = c
-- __call(a, ...)                  for a(...)
