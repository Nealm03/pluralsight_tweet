defmodule PluralsightTweet.FileReader do

  import Utilities.StringHelpers
  def get_strings_to_tweet(path) do
    File.read!(path)
    |> pick_string
  end
end
