defmodule Exercise do

  def multiples_of(number) do
    Enum.filter(1..number, &( rem(number, &1)==0 ))
  end

  def prime?(number) do
    multiples_of(number) == [1,number]
  end

end
