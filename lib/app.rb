# Gem required to run the program
require 'dotenv'
require 'twitter' 
require 'pry'

# For call the '.env' 
Dotenv.load('.env') 

# Few lines for call API Keys from '.env'
def login_twitter()
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end

# The Tweet !
def the_tweet(login_twitter)
  client = client.update('Mon premier tweet en Ruby !!!!')
  return client
end

the_tweet(login_twitter)
