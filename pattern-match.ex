x = 1 # =: match operator
1 = x # match
2 = x # match error

# Lists #
list = [1, 2 ,3]
[1, 2, 3] = list # match
[] = list # match error
[1 | tail] = list # tail = [2, 3]

# Tuples #
{:ok, value} = {:ok, "Successful!"} # value = "Successful!"
{:ok, value} = {:error} # match eror
