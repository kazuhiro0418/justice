class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 } 
  validates :image_url, presence: true
  validates :body, length: { maximum: 40 } 
  VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: true
  
  has_many :boards
  has_many :comments
end