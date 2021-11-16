class User < ActiveRecord::Base
  has_secure_password
  #define variable 'name' from available User table fields
  def name
    "#{first_name} #{last_name}"
  end

	validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
	validates :password, length: { minimum: 8 }
	validates :password_confirmation, presence: true
end