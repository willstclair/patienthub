class TreatmentCategory < ActiveRecord::Base
  attr_accessible :treatment_category_name

  has_many :treatments
  has_many :users, through: :treatments

end
