res = 1..(1000-1) |> Enum.filter(&(rem(&1, 3) == 0 || rem(&1, 5) == 0)) |> Enum.sum
IO.inspect(res)
