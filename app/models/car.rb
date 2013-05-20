class Car < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :brand, :model, :nauto
  validates :brand, :presence => true
  validates :model, :presence => true
end
