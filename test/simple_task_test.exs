defmodule SimpleTaskTest do
  use ExUnit.Case
  doctest SimpleTask

  test "greets the world" do
    assert SimpleTask.hello() == :world
  end
end
