class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show, :update,:destroy]
  before_action :move_to_index, except: [:index, :show]

  def index
   @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def show
    
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @tweet.destroy # ← set_tweet でセットされた @tweet を削除
    redirect_to root_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end