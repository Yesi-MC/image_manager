class Users::ImagesController < ApplicationController 

  def new 
    @image = Image.new
  end
end