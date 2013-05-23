class Condition < ActiveRecord::Base
  attr_accessible :category_id, :condition_id, :condition_name

# These were added manually by the two of us. Line two was auto-generated when we ran a command line to create a model.

  belongs_to :category
  belongs_to :user

end
