class Blog < ApplicationRecord
  # Associations
  has_and_belongs_to_many :users, join_table: :teams, dependent: :destroy

  # Before save replace every space in name with a dash
  before_save :replace_spaces_with_dashes

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :subdomain, presence: true, uniqueness: true


  # Replace every space in name with a dash
  def replace_spaces_with_dashes
    self.subdomain = self.name.gsub(/\s+/, "-")
  end
end
