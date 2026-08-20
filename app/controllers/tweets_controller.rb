class TweetsController < ApplicationController
 before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = Tweet.all
  end 
  def show
  end

  def edit
  end

  def new
    @tweet = Tweet.new
  end

 def create
    Tweet.create(tweet_params)
    redirect_to '/'
  end
 def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end  
