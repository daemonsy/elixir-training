defmodule Recursion.At do
  def at(list, index) do
    at(list, index, 0)
  end

  defp at([], _desired_index, _current_index), do: nil

  defp at([head | _tail], desired_index, current_index) when desired_index == current_index do
    head
  end

  defp at([_head | tail], desired_index, current_index) do
    at(tail, desired_index, current_index + 1)
  end
end
