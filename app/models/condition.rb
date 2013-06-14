class Condition < ActiveRecord::Base
  attr_accessible :condition_name

  belongs_to :condition_category
  has_many :diagnoses
  has_many :treatments, through: :diagnoses
  has_many :users, through: :diagnoses

  validates :condition_category_id, presence: true, numericality: { only_integer: true }
  validates :condition_name, presence: true

 # Note to self: foreign key always goes along with the one that belongs to

end
