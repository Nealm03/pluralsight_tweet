defmodule StringHelpersTest do
  use ExUnit.Case
  import Utilities.StringHelpers
  test "Given an empty string it returns an empty string" do
     str = pick_string("")
     assert str == ""
  end
end
