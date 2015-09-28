defmodule LargestPalindrome do

  def calculate(digits) do
    range = 1..(round(:math.pow(10, digits) - 1))
    res = for a <- range,
              b <- range,
              palindrome?(a*b),
              do: a * b
    Enum.max(res)

  end

  defp palindrome?(n) do
    str = Integer.to_string(n)
    str == String.reverse(str)
  end

end

IO.inspect LargestPalindrome.calculate(3)
