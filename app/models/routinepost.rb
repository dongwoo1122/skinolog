class Routinepost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :skinproblem

  validates :title,          presence: true
  validates :goal,           presence: true
  validates :skinproblem_id, numericality: { other_than: 1 } 
end
