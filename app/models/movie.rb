class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, length: { minimum: 6 }, uniqueness: true, presence: true
  validates :overview, presence: true
end
