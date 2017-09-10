defmodule ReduceTest do
  use ExUnit.Case
  import Recursion.Reduce, only: [reduce: 3]

  test "combines all elements of a list by applying an operation" do
    assert reduce([1, 2, 3], 0, &+/2) == 6
  end

  test "accounts for the starting accumulator" do
    assert reduce([1, 2, 3], 6, &-/2) == 0
    assert reduce([1, 2, 3], 6, &+/2) == 12
  end
end
