class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      has_many :tweets
      has_many :comments


        with_options presence: true do
          validates :user_name
          validates :password
          validates :birthday
          validates :profile

        end


end
