class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def thank

  end

end
