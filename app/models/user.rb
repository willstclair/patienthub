class User < ActiveRecord::Base
  attr_accessible :comments, :condition_id, :first_name, :last_name, :password_digest, :treatment_id, :user_id, :user_name, :user_type, :zip_code, :email

  user_type =["Expert", "User"]

  has_secure_password

  has_many :diagnoses
  has_many :conditions, through: :diagnoses
  has_many :treatments, through: :diagnoses

  validates :user_name, presence: true, uniqueness: true
  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :zip_code, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 99950}
end
