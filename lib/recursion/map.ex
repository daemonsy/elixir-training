defmodule Recursion.Map do
  def map(list, mapper_function) do
    list
      |> mapper(mapper_function, [])
      |> Enum.reverse
  end

  defp mapper([], _map_function, acc) do
    acc
  end

  defp mapper([head | tail],  map_function, acc) do
    mapper(tail, map_function, [map_function.(head) | acc])
  end
end
