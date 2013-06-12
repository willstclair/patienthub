class Condition < ActiveRecord::Base
  attr_accessible :condition_category_id, :condition_id, :condition_name

  belongs_to :condition_category, foreign_key: 'condition_category_id'

end
