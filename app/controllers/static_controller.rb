class StaticController < ApplicationController
  def index
    @api=ApiBestPay.new

  end

  def home
    @user = User.new
  end

  def account
    @user = User.find(params[:user_id])

  end

  def offer
  end

  def privacy
  end

  def new

  end

end
