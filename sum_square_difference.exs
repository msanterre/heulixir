defmodule SumSquare do

  def calculate(range) do
    round(square_sum(range) - sum_square(range))
  end


  defp square_sum(range) do
    range
    |> Enum.sum
    |> :math.pow(2)
  end

  defp sum_square(range) do
    range
    |> Enum.map(fn(x) -> :math.pow(x,2) end)
    |> Enum.sum
  end
end

SumSquare.calculate(1..100)
