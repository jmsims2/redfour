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

  test "Mars Escape Velocity" do
    assert Physics.Rocketry.escape_velocity(:mars) == 5.1
  end

  test "Earth Moon Escape Velocity" do
    assert Physics.Rocketry.escape_velocity(:earth_moon) == 2.4
  end

  test "Earth Orbital Term > 3 hours" do
    height = 100
    assert Physics.Rocketry.orbital_term(height) > 3
  end

  test "Earth Orbital Term < 5 hours" do
    height = 100
    assert Physics.Rocketry.orbital_term(height) < 5
  end
end
