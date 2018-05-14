class HomeController < ApplicationController
  def index
  end

  def user_list
    @user = User.all
  end

  
end
