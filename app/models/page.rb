class Page < ApplicationRecord
  # Associations
  belongs_to :blog

  # Before save replace every space in name with a dash
  before_save :replace_spaces_with_dashes

  has_one_attached :image

  # Replace every space in name with a dash and delete dash at the end and beginning of the string
  def replace_spaces_with_dashes
    self.subfolder = self.name.downcase.gsub(" ", "-").gsub(/^-/, "").gsub(/-$/, "")
  end
end
