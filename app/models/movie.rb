class Movie < ApplicationRecord
  validates :name, :year, :genre_ids, presence: true
  validates :name, length: { maximum: 80 }
  
  has_and_belongs_to_many :genres

  has_many :favorites
  has_many :users, through: :favorites
end
