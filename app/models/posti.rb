class Posti < ActiveRecord::Base
  attr_accessible :actdate, :area, :autonom, :city, :city_1, :indexold, :opsname, :opssubm, :opstype, :region
  self.per_page = 10
  ThinkingSphinx::Index.define 'posti', :with => :active_record
end
