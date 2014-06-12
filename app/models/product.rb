class Product < ActiveRecord::Base
  belongs_to :brewery
  mount_uploader :image, ImageUploader
end
