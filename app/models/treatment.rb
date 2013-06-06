class Treatment < ActiveRecord::Base
  attr_accessible :treatment_category_id, :treatment_id, :treatment_name

  belongs_to :treatment_category, foreign_key: 'treatment_category_id'

end
