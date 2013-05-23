class User < ActiveRecord::Base
  attr_accessible :comments, :condition_id, :first_name, :last_name, :treatments_advised, :user_id, :user_name, :user_type, :zip_code

  has_many :conditions

end
