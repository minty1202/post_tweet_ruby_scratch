require 'twitter'
require 'dotenv'

class PostTweet

  def initialize
    Dotenv.load
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['CONSUMER_KEY']
      config.consumer_secret     = ENV['CONSUMER_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_SECRET']
    end
  end

  def tweet
    @client.update('こんな感じでスクラッチで投稿できます。挑戦してみて！ ちなみにこれはRubyで書いてる。大体40分ぐらい')
  end
end

client = PostTweet.new
client.tweet