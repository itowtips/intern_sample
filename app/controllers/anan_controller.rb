class AnanController < ActionController::Base

  layout "application"

  def index
    render "index"
  end

  def get_twitter_info
    #require 'twitter'

    ## TODO
    #@twitter = Twitter.user("tokushima_city")
  end
end
