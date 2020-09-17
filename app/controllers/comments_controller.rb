class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
    # comment.tweet_idでないことに注意。
  end
  
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
    # ここで、tweet_id: params[:tweet.id]ではなく、params[:tweet_id]となっている理由は、% rails routesをした際のcomments#createの値を参照せよ。
  end
end