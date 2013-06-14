class Treatment < ActiveRecord::Base
  attr_accessible :treatment_name

  belongs_to :treatment_category
  has_many :diagnoses
  has_many :conditions, through: :diagnoses
  has_many :users, through: :diagnoses

  validates :treatment_name, presence: true

end
