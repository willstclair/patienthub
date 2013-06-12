class Condition < ActiveRecord::Base
  attr_accessible :condition_category_id, :condition_id, :condition_name

  belongs_to :condition_category, foreign_key: 'condition_category_id'
  has_many :users, foreign_key: 'condition_id'
  has_and_belongs_to_many :treatments, :through => :Users, foreign_key: 'treatment_id',

  validates :condition_category_id, presence: true, numericality: { only_integer: true }
  validates :condition_id, presence: true, numericality: true, uniqueness: true
  validates :condition_name, presence: true

end
