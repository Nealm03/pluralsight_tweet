defmodule FileReaderTest do
  use ExUnit.Case
  import PluralsightTweet.FileReader
  import Mock

  test "Passing a file should return a string" do
    strDir = Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt")
    str = get_strings_to_tweet(strDir)
    assert str != nil
  end

  test "Does not return a string exceeding 140 chars in length" do
    strDir = Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "/fixtures/too_long.txt");
    str = get_strings_to_tweet(strDir)
    assert 140 >= String.length(str)
  end

  test "An empty string returns an empty string" do
    with_mock File, [read!: fn(_) -> "" end] do
      str = get_strings_to_tweet("blah")
      assert str == ""
    end
  end
  test "The string should be trimmed" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_strings_to_tweet("meh")
      assert str == "ABC"
    end
  end
end
