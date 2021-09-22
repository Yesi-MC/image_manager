class Image < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, 
                        :image_url
end
