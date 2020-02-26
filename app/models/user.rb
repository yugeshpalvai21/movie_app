class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 20 }

  has_many :favorites, dependent: :destroy
  has_many :movies, through: :favorites
end
