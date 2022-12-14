class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  # Associations
  has_and_belongs_to_many :blogs, join_table: :teams, dependent: :destroy

  has_one_attached :avatar

  # Enums
  enum role: [:editor, :admin]

end
