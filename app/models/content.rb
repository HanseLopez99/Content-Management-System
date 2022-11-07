class Content < ApplicationRecord
  belongs_to :blog
  belongs_to :page
  has_rich_text :content
end
