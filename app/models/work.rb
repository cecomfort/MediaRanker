class Work < ApplicationRecord
  has_many :votes
  has_many :users, through: :votes

  # validates :category, inclusion: { in: ["album", "movie", "book"] }
end
