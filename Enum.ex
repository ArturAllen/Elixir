# Functions #
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end) # -> false
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end) # -> true

Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end) # -> false

Enum.chunk_every([1, 2, 3, 4, 5, 6], 2) # -> [[1, 2], [3, 4], [5, 6]]

Enum.chunk_by(["one", "two", "three", "four", "five"], fn(s) -> String.length(s) end)

Enum.map_every([1,2,3,4,5,6,7,8], 3, fn x -> x + 1000 end)

# Enum.each(["one", "two", "three"], fn s -> IO.puts(s) end)

Enum.map([0, 1, 2, 3], fn x -> x-1 end)

Enum.min([5, 3, 0, -1])

Enum.max([5, 3, 0, -1])

Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)

Enum.reduce([1, 2, 3], 10, fn(x, acc) -> x + acc end)

Enum.sort([5, 6, 1, 3, -1, 4])

Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1])

Enum.map([0, 1, 2, 3], &(&1-1)) # same as line 15. &: capture operator

plus_tree = &(&1 + 3)
Enum.map([1, 2, 3], plus_tree)


defmodule Adding do
  def plus_two(number), do: number + 2
end

Enum.each(Enum.map([1, 2, 3], &Adding.plus_two/1), fn s -> IO.puts(s) end)
