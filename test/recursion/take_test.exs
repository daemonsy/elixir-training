defmodule TakeTest do
  use ExUnit.Case
  import Recursion.Take, only: [take: 2]

  test "takes n elements from a list when length > n" do
    list = [1, 2, 3, 4, 5]

    assert take(list, 4) |> length == 4
  end

  test "takes all elements from a list when length < n" do
    list = [1, 2, 3]

    assert take(list, 4) |> length == 3
  end

  test "preserves the ordering of the original list" do
    list = [1, 3, 2]

    assert take(list, 3) == [1, 3, 2]
  end
end
