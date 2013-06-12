class User < ActiveRecord::Base
  attr_accessible :comments, :condition_id, :first_name, :last_name, :password_digest, :treatment_id, :user_id, :user_name, :user_type, :zip_code

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :treatment_id, presence: true
  validates :user_name, presence: true
  validates :user_type, presence: true
  validates :zip_code, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 99950}
end
