require 'rails_helper'

RSpec.describe "As a logged in user" do 
  describe "When I visit 'users/:id/dashboard" do 
    before :each do 
      @user1 = User.create!(name: "Michael Scott", email: "michaels@gmail.com", password: "pass123!!")
      @image1 = Image.create!(title: "Corgi Picture", description: "This is a picture of a corgi painting", image_url: "https://thumbs.dreamstime.com/b/pembroke-welsh-corgi-short-haired-dog-runs-surprisingly-fast-water-colour-painting-165321366.jpg", user_id: @user1.id)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user1)
    end 
    it "allows a user to create a upload an new image url" do 
      visit new_user_image_path(@user1.id) 

      fill_in "Title", with: "Brand New Picture" 
      fill_in "Description", with: "This is my brand new image"
      fill_in "Image URL", with: "https://img.freepik.com/free-vector/cute-corgi-puppy-cartoon-icon_42750-299.jpg?size=338&ext=jpg"
      click_button "Upload Image" 

      expect(current_path).to eq(dashboard_path(@user1.id))
    
      expect(page).to have_content("Title: Brand New Picture")
      expect(page).to have_content("Description: This is my brand new image")
    end
  end 
end 