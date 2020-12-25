

states_hash = {
  :new_york => "new york",
  :kentucky => "frankfurt",
  :indiana => "indianapolis",
  :california => "sacramento"
}

residents = {
:new_york => ["jane", "steve", "brian", "susan"],
:kentucky => ["ralph", "joe", "fred"],
:indiana => ["bess", "paul", "tim"],
:california => ["arnold", "gray", "david"]
}

residents.each do |state, name|
  residents[:state][name]
end
