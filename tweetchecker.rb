require 'bundler/inline'

gemfile true do
 source 'http://rubygems.org'
 gem 'twitter'
end

require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "<consumer key>"
  config.consumer_secret     = <consumer secret>"
  config.access_token        = "<access token>"
  config.access_token_secret = "<token secret>"
end

max_lenth = 140
puts "Enter your tweet:"
tweet = gets.chomp
if tweet.length > max_lenth
  puts "your message is too long! Please retry:"
  tweet = gets.chomp
end
client.update (tweet)
puts "Your tweet is: #{tweet}"
