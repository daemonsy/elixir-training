defmodule SumTest do
  use ExUnit.Case
  import Recursion.Sum, only: [sum: 1]

  test "sums all numbers in the list together" do
    list = [5, 5, 6]

    assert sum(list) == 16
  end

  test "the sum of an empty list is zero" do
    assert sum([]) == 0
  end
end
