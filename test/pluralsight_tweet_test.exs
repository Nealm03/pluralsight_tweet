defmodule PluralsightTweetTest do
  use ExUnit.Case
  doctest PluralsightTweet

  test "greets the world" do
    assert PluralsightTweet.hello() == :world
  end

  test "another test" do
    assert 2 + 2 == 4
  end
end
