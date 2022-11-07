class Blog < ApplicationRecord
  # Associations
  has_and_belongs_to_many :users, join_table: :teams, dependent: :destroy

  has_one_attached :image

  # Before save replace every space in name with a dash
  before_save :replace_spaces_with_dashes

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :subdomain, uniqueness: true


  # Replace every space in name with a dash and delete dash at the end and beginning of the string
  def replace_spaces_with_dashes
    self.subdomain = self.name.downcase.gsub(" ", "-").gsub(/^-/, "").gsub(/-$/, "")
  end
end
