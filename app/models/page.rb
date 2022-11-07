class Page < ApplicationRecord
  # Associations
  belongs_to :blog

  has_one_attached :image
end
