class ConditionCategory < ActiveRecord::Base
  attr_accessible :condition_category_id, :condition_category_name

  has_many :conditions, foreign_key: 'condition_category_id'
  has_many :users, foreign_key: 'condition_id', through: "Conditions"

end
