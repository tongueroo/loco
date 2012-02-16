%w/
  Chicken
  Steak
  Pork
/.each do |name|
  Burrito.create(:name => name)
end