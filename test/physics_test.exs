defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "the truth" do
    left = 2
    right = 4
    IO.inspect(left == right)
    assert left + 2 == right
  end
end
