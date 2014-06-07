class Brewery < ActiveRecord::Base

  has_secure_password
  validates :email, presence: true

end