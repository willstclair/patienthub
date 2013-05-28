class Category < ActiveRecord::Base
  attr_accessible :category_id, :category_name

  has_many :conditions, foreign_key: 'category_id'
  has_many :users, foreign_key: 'category_id', through: "Conditions"

end
