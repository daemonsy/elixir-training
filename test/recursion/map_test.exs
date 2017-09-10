defmodule MapTest do
  use ExUnit.Case
  import Recursion.Map, only: [map: 2]

  test "maps a new list with fn applied" do
    assert map([1, 2, 3], fn(x) -> x * 2 end) == [2, 4, 6]
  end

  test "preserves the order of the original list" do
    assert map([3, 6, 4], fn(x) -> x end) == [3, 6, 4]
  end
end
