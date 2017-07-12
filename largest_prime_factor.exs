defmodule PrimeFactor do

  def calculate(n) do
    find(n, [])
  end

  def find(n, factors) do
    if prime?(n) do
      Enum.max([n | factors])
    else
      [rest, fact] = acc_divide(n, 2)
      find(rest, [fact | factors])
    end
  end

  defp acc_divide(number, divisor) when rem(number, divisor) == 0, do: [round(number/divisor), divisor]
  defp acc_divide(number, divisor), do: acc_divide(number, next_prime(divisor))

  def next_prime(n) do
    next = n + 1
    if prime?(next) do
      next
    else
      next_prime(next)
    end
  end

  # Simple heuristic functions for speed and love
  def prime?(1), do: true
  def prime?(3), do: true
  def prime?(5), do: true

  def prime?(p) do
    r = :random.uniform(p-1)
    t = mpow(r, p-1, p)

    return t == 1
  end

  def mpow(n, 1, _) do
    n
  end

  def mpow(n, k, m) do
    mpow(rem(k, 2), n, k, m)
  end

  def mpow(0, n, k, m) do
    x = mpow(n, div(k, 2), m)
    rem(x*x, m)
  end

  def mpow(_, n, k, m) do
    x = mpow(n, k-1, m)
    rem(x*n, m)
  end

end

IO.inspect PrimeFactor.calculate(600_851_475_143)
