# Lists #
list = [3.14, :pie, "Apple"]

["pi"|list] # prepending

list ++ ["Cherry"] # appending (slower than prepending)

# List concatenation #
[1, 2] ++ [3, 4, 1] # -> [1, 2, 3, 4, 1]

# List subtraction #
["foo", :bar, 42] -- [42, "bar"] # -> ["foo", :bar]
[1, 2, 2, 3, 2, 3] -- [1, 2, 3, 2] # - > [2, 3]
[2] -- [2.0] # -> [2]
[2.0] -- [2.0] # -> []

# Head/Tail
hd [3.14, :pie, "Apple"] # -> 3.14
tl [3.14, :pie, "Apple"] # -> [:pie, "Apple"]

# Tuples
{3.14, :pie, "Apple"}

# Keyword lists
[foo: "bar", hello: "world"]
[{:foo "bar"}, {:hello "world"}]

# Maps
map = %{:foo => "bar", "hello" => :world}
map[:foo] # -> "bar"
map["hello"] # -> :world

key = "hello"
%{key => "world"} # It's possible to use a variable as key

%{:foo => "bar", :foo => "hello world"} # -> %{foo: "hello world"}

%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"} # -> true

map.hello # -> "world"

%{map | foo: "baz"} # only for updating a value

Map.put(map, :foo, "baz") # creates new key
