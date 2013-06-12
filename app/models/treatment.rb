class Treatment < ActiveRecord::Base
  attr_accessible :treatment_category_id, :treatment_id, :treatment_name

  belongs_to :treatment_category, foreign_key: 'treatment_category_id'
  has_many :users, foreign_key: 'treatment_id'
  has_and_belongs_to_many :conditions, through: "Users", foreign_key: 'condition_id'

  validates :treatment_category_id, presence: true, numericality: { only_integer: true }
  validates :treatment_id, presence: true, numericality: { only_integer: true }, uniqueness: true
  validates :treatment_name, presence: true

end
