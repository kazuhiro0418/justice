class Comment < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 } 
  validates :comment, presence: true, length: { maximum: 1000 } 

  belongs_to :board
  belongs_to :user
end