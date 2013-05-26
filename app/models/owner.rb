class Owner < ActiveRecord::Base
  has_many :cars, :dependent => :destroy
  attr_accessible :fam, :name
end
