defmodule Zipper do

  def zip(_,[]) do [] end
  def zip([],_) do [] end
  def zip([a|as],[b|bs]) do
    [{a,b} | zip(as,bs)]
  end

  def zip_with(as,bs,func) do
    zip(as,bs)
    |> Enum.map(fn {x,y} ->
      func. (x,y)
    end)
  end

end

a = [1,2,3]
b = [2,3,4]

Zipper.zip(a,b)
|> Enum.each(fn {x,y} -> IO.write("{#{x},#{y}} ") end)

IO.puts("")

Zipper.zip_with(a,b, fn x, y -> x*y end)
|> Enum.each(fn x -> IO.write("#{x} ") end)
