class User < ActiveRecord::Base
  has_secure_password

  validates :name, :surname, :email, presence: true
  validates :email, uniqueness: true
end