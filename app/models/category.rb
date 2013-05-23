class Category < ActiveRecord::Base
  attr_accessible :category_id, :category_name
  has_many :conditions


end
