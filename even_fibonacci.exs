defmodule Fib do
  def fib(0) do 0 end
  def fib(1) do 1 end
  def fib(n) do fib(n - 1) + fib(n - 2) end
end

res = 1..35 |> Enum.map(&(Fib.fib(&1))) |> Enum.filter(&(&1 < 4_000_000)) |> Enum.filter(&(rem(&1,2) == 0)) |> Enum.sum
IO.inspect(res)
