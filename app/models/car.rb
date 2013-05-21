class Car < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :brand, :model, :nauto, :owner_id

end
