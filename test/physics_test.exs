defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "the truth" do
    left = 2
    right = 2
    IO.inspect(left == right)
    assert left == right
  end

  test "Earth Escape Velocity" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end
end
