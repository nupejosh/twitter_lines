class Streamer < ActiveRecord::Base
  attr_accessible :hash_tag

  TweetStream.configure do |config|
    config.username = '3edition'
    config.password = 'nupejosh3'
    config.auth_method = :basic
  # config.consumer_key       = 'CUTfZ4JQytJbvn3hPXDc5w'
  # config.consumer_secret    = 'zp0XbkuFVXTNEx71NoWolanncpewozu2Fitml9onqs'
  # config.oauth_token        = '211252437-xLKgU5yakvk1qXBmbMbY1ev2kBfoiBNwTFv7pWaD'
  # config.oauth_token_secret = '6F14YUNalRcYeap8iBTbHkbpeujuMrm0XenbNmmt4'
  # config.auth_method        = :oauth
end

def stream_it
# TweetStream::Client.new.track('#lebron') do |stream|
#   puts "#{stream.text}"

# @statuses = []
# TweetStream::Client.new.track('#{hash_tag}') do |status, client|
#   @statuses << status
#   client.stop if @statuses.size >= 10
# end
# puts @statuses
# end

EM.run do
  client = TweetStream::Client.new

 client.track('fail') do |status|
  puts "[#{status.user.screen_name}] #{status.text}"
end
end
end
end
