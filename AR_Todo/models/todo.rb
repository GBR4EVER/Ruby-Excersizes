
class Todo < ActiveRecord::Base
  has_many :categories
  has_and_belongs_to_many :photos
end