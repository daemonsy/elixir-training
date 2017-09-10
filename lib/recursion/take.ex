defmodule Recursion.Take do
  def take(list, number_of_elements) do
    list
      |> take(number_of_elements, 0, [])
      |> Enum.reverse
  end

  defp take(_list, number_of_elements, count, acc) when count == number_of_elements do
    acc
  end

  defp take([], _number_of_elements, _count, acc) do
    acc
  end

  defp take([head | tail], number_of_elements, count, acc) do
    take(tail, number_of_elements, count + 1, [head | acc])
  end
end
