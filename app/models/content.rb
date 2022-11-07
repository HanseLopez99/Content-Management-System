class Content < ApplicationRecord
  belongs_to :blog
  belongs_to :page
  has_rich_text :content
  has_one_attached :image
end
