class Blog < ApplicationRecord
  # Associations
  has_many :teams
  has_many :users, through: :teams
  has_many :pages
end
