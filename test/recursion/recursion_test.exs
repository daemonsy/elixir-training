defmodule RecursionTest do
  use ExUnit.Case
  import Recursion, only: [fibonacci: 1]
  doctest Recursion

  test "returns the fibonnaci number given n" do
    assert fibonacci(8) == 21
  end

  test "returns n when n < 2" do
    assert fibonacci(1) == 1
    assert fibonacci(0) == 0
  end
end
