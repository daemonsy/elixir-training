defmodule Recursion.Sum do
  def sum(list) do
    sum(list, 0)
  end

  defp sum([], acc) do
    acc
  end

  defp sum(list, acc) do
    [number | rest_of_list] = list
    sum(rest_of_list, number + acc)
  end
end
