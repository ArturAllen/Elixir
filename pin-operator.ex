x = 1
^x = 2 # Match error

{x, ^x} = {2, 1} # IO.puts(x) -> 2

key = "hello"
%{key => value} = %{"hello" => "world"} # IO.puts(value) -> "world"

%{^key => value} = %{:hello => "world"} # Match error
