defmodule AtTest do
  use ExUnit.Case
  import Recursion.At, only: [at: 2]

  test "finds the element given the index" do
    assert at([1, 2, 3, 4], 2) == 3
  end

  test "returns nil if element is not present in the list" do
    assert at([1], 3) == nil
  end
end
