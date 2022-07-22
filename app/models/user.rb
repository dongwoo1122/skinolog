class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :routineposts
  has_many :logposts
  has_one_attached :image

  validates :nickname, presence: true
  validates :skintype_id, numericality: { other_than: 1 } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :skintype
  
end
