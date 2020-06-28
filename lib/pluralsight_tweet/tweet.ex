defmodule PluralsightTweet.Tweet do
  def send(str) do
    ExTwitter.configure(:process, [
      consumer_key: System.get_env("PLURALSIGHT_TWITTER_CONSUMER_KEY"),
      consumer_secret: System.get_env("PLURALSIGHT_TWITTER_SECRET"),
      access_token: System.get_env("PLURALSIGHT_TWITTER_TOKEN"),
      access_token_secret: System.get_env("PLURALSIGHT_TWITTER_TOKEN_SECRET")
    ])

    ExTwitter.update(str)
  end
end
