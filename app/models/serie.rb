class Serie < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :release_year, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true

  has_one_attached :photo
end
