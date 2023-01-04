class User < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true
  validates :body, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true
  
  has_many :board_user_relations, dependent: :delete_all
  has_many :boards, through: :board_user_relations
  has_many :comment_user_relations, dependent: :delete_all
  has_many :comments, through: :comment_user_relations

end