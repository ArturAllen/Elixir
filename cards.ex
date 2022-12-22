defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits  = ["Spades", "Clubs","Hearts", "Diamonds"]

    for v <- values, s <- suits do
      "#{v} of #{s}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
  
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end
  
  def load(deck, filename) do
    
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "Unable to open file #{filename}"
    end
    
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size) # the pipe operator ALWAYS passes values as the FIRST argument
  end
  
end

#IO.puts(Cards.create_deck |> Cards.shuffle)
#IO.puts( Cards.contains?(Cards.create_deck, "Six of Diamonds") )
{hand,deck} = Cards.deal(Cards.create_deck |> Cards.shuffle, 5)

Enum.each(hand, fn x -> IO.puts("Hand: #{x} ") end)
Enum.each(deck, fn x -> IO.puts("Deck: #{x} ") end)
