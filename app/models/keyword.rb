class Keyword < ActiveRecord::Base
    def grab_tweets
      client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "zpFCbeWMwQSHYFvOg3L8ShNce"
  config.consumer_secret     = "06iNv4EZdRvA6IbYbqRkezZ3ThiAb23kizGlYVpfGQntWAYVwm"
  config.access_token        = "2876713174-jmjXIDoVNR1D7OsoOj3NMYfWo4Jkas9QFaWuRlr"
  config.access_token_secret = "UP0gSccYHPsmYQMIOyy5j1ecitI4d7dof5QBq9RxNQw2e"
end

      client.search(self.word, result_type: "recent").take(3).collect do |tweet|
  "#{tweet.user.screen_name}: #{tweet.text}"
      end    
    end
end
