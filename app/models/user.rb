class User < ApplicationRecord
  has_one_attached :photo
  has_many :series, dependent: :destroy
  has_many :movies, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
