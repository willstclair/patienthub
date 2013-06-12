class Treatment < ActiveRecord::Base
  attr_accessible :treatment_category_id, :treatment_id, :treatment_name

  belongs_to :treatment_category, foreign_key: 'treatment_category_id'

  validates :treatment_category_id, presence: true, numericality: true
  validates :treatment_id, presence: true
  validates :treatment_name, presence: true

end
