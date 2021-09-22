class Users::ImagesController < ApplicationController 

  def new 
    @image = Image.new
  end

  def create
    @user = User.find(params[:id])
    @image = @user.images.new(image_params)
    @image.save
    flash[:notice] = "#{@image.title} was created"
    redirect_to dashboard_path(current_user)
  end

  private 

  def image_params 
    params.require(:image).permit(:title, :description, :image_url)
  end
end