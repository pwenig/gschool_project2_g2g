class Brewery < ActiveRecord::Base
  has_many :products
  has_secure_password
  validates :email, presence: true

end