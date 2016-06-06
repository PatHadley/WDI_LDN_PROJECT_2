class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :plants
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :username, length: {in: 4..50}, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # # validates :password_confirmation, presence: true
end
