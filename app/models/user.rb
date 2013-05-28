class User < ActiveRecord::Base
  attr_accessible :comments, :condition_id, :first_name, :last_name, :password_digest, :treatments_advised, :user_id, :user_name, :user_type, :zip_code
end
