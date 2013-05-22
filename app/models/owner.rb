class Owner < ActiveRecord::Base
  has_many :cars
  attr_accessible :fam, :name
end
