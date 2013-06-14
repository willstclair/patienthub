class ConditionCategory < ActiveRecord::Base
  attr_accessible :condition_category_name

  has_many :conditions
  has_many :users, through: :conditions

end
