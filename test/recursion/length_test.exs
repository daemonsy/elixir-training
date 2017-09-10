defmodule LengthTest do
  use ExUnit.Case

  test "returns the length of the list" do
    assert Recursion.Length.length([1, 2, 3]) == 3
  end

  test "returns 0 for an empty list" do
    assert Recursion.Length.length([]) == 0
  end
end
