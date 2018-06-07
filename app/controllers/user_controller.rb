class UserController < ApplicationController
=begin
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:id])
    @user.request = request
    if @user.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'cannot send message'
      render :new
    end
  end
=end
end
