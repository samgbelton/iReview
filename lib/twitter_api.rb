class TwitterApi
  def self.our_public_tweets
    client.user_timeline('BBCiPlayer', count: 10, exclude_replies: true)
  end
  
  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = "iX7xAXiLux4ZnvdH3731rKfl6"
      config.consumer_secret     = "gLdCflHQndhDBrlXezrPM3Hc54f9pUG6KBfHvQT60dfEc8js2E"
    end
  end
end
