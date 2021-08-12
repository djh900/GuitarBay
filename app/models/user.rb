class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Ensure usernames are saved as lowercase to prevent forgery
  
  before_save :enforce_lower_case_username

  def enforce_lower_case_username
    self.username = self.username.downcase
  end
end
