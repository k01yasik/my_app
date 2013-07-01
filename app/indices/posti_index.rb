ThinkingSphinx::Index.define :posti, :with => :active_record do
  indexes region, area, city, city_1
  has id
end
