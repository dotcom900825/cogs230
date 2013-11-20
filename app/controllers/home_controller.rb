class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def thank

  end

  def cs218
    @user = User.new
  end

end
