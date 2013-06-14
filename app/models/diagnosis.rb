class Diagnosis < ActiveRecord::Base
  attr_accessible :condition_name, :treatment_name, :user_name

  belongs_to :treatment
  belongs_to :user
  belongs_to :condition

end
