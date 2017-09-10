defmodule Recursion.Length do
  def length(list) do
    length(list, 0)
  end

  defp length([], count), do: count

  defp length([_head | tail], count) do
    length(tail, count + 1)
  end
end
