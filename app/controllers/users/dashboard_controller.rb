class Users::DashboardController < ApplicationController 

  def index 
    @images = current_user.images 
  end
end