class Comment < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 } 
  validates :comment, presence: true, length: { maximum: 1000 } 

  belongs_to :board
  has_many :comment_user_relations
  has_many :users, through: :comment_user_relations
end