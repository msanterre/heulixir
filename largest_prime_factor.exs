defmodule PrimeFactor do

  def calculate(n) do
    primes = 1..n |> Enum.filter &(prime?(&1))
    primes |> Enum.filter &(rem(n, &1) == 0)
  end

  defp prime?(n) do
    divisibles = 1..n |> Enum.filter(&(rem(n, &1)) == 0)
    length(divisibles) == 2
  end

end

IO.inspect PrimeFactor.calculate(600851475143)
