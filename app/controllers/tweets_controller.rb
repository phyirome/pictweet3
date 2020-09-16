class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def craete
    # @tweet = Tweet.new(tweet_params)
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end


end
