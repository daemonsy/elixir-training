defmodule Recursion.Reduce do
  def reduce(list, starting_value, reduce_func) do
    reduce_loop(list, reduce_func, starting_value)
  end

  defp reduce_loop([], _reduce_func, acc) do
    acc
  end

  defp reduce_loop([head | tail], reduce_func, acc) do
    reduce_loop(tail, reduce_func, reduce_func.(acc, head))
  end
end
