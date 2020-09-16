class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]

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

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
  end


  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end


end
