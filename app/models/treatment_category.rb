class TreatmentCategory < ActiveRecord::Base
  attr_accessible :treatment_category_id, :treatment_category_name

  has_many :treatments, foreign_key: 'treatment_category_id'
  has_many :users, foreign_key: 'treatment_category_id', through: "Treatments"

end
