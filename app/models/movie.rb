class Movie < ApplicationRecord
  belongs_to :user
  validates :title, presence: true

  has_one_attached :cover_image
end
