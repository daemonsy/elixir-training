defmodule Recursion do
  def fibonacci(n) do
    fib(n)
  end

  defp fib(n) when n < 2, do: n

  defp fib(n) do
    fib(n - 1) + fib(n - 2)
  end
end
