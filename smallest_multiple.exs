# This is a purely brute force method without any additional research.
# Better methods explained here: https://en.wikipedia.org/wiki/Least_common_multiple

defmodule SmallestMultiple do

  def calculate(n, 1), do: true

  def calculate(current, jump, n) do
    IO.puts("#{current} / #{n}")

    if divisible?(current, n) do
      if calculate(current, jump, n - 1) do
        current
      else
        calculate(current + jump, jump, n)
      end
    else
      false
    end
  end

  defp divisible?(n, 1), do: true
  defp divisible?(n, m) do
    rem(n, m) == 0
  end
end


SmallestMultiple.calculate(20, 20, 20)
