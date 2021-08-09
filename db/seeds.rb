# This file contains the seed data for the models referenced by the Listings model

# Raw data:

categories = [
  "Electric",
  "Acoustic",
  "Bass",
  "Other"
]

manufacturers = [
  "Alvarez",
  "Ashton",
  "Behringer",
  "Cort",
  "Dean",
  "Epiphone",
  "Fender",
  "Gibson",
  "Gretsch",
  "Ibanez",
  "Jackson",
  "Kawai",
  "Not Listed",
  "Peavey",
  "Reverend",
  "Rickenbacker",
  "Squier",
  "Stagg",
  "Steinberger",
  "Takamine",
  "Taylor",
  "Tokai",
  "Yamaha"
]

conditions = [
  "Brand New",
  "As New",
  "Used - Mint",
  "Used - Good",
  "Used - Average",
  "Used - Poor",
  "Defective"
]

colors = [
  "White",
  "Black",
  "Red",
  "Blue",
  "Natural/Wood",
  "Sunburst",
  "Other",
  "Yellow",
  "Grey",
  "Green",
  "Orange",
  "Aqua",
  "Gold"
]

materials = [
  " ",
  "Ash",
  "Alder",
  "Basswood",
  "Mahogany",
  "Maple",
  "Other",
  "Poplar",
  "Spruce",
  "Walnut"
]

fingerboards = [
  " ",
  "Ebony",
  "Maple",
  "Other",
  "Pau Ferro",
  "Rosewood"
]

bridges = [
  " ",
  "Fixed - Hardtail",
  "Fixed - Tune-O-Matic",
  "Fixed - Wraparound",
  "Fixed - Other",
  "Tremolo - Bigsby",
  "Tremolo - Floyd Rose",
  "Tremolo - Synchronised",
  "Tremolo - Other",
  "Acoustic",
  "Vintage",
  "Other"
]

countries = [
  " ",
  "China",
  "Indonesia",
  "Japan",
  "Korea",
  "Mexico",
  "USA",
  "Other"
]

cases = [
  "Not included",
  "Gigbag",
  "Hardcase",
]

deliveries = [
  "Pickup",
  "Local delivery",
  "Shipping included within Australia",
  "Shipping available at buyer's cost"
]

# Seeding the data into the database:

categories.each do |i|
  Category.create(
    name: i
  )
end

manufacturers.each do |i|
  Manufacturer.create(
    name: i
  )
end

conditions.each do |i|
  Condition.create(
    name: i
  )
end

colors.each do |i|
  Color.create(
    name: i
  )
end

materials.each do |i|
  Material.create(
    name: i
  )
end

fingerboards.each do |i|
  Fingerboard.create(
    name: i
  )
end

bridges.each do |i|
  Bridge.create(
    name: i
  )
end

countries.each do |i|
  Country.create(
    name: i
  )
end

cases.each do |i|
  Case.create(
    name: i
  )
end

deliveries.each do |i|
  Delivery.create(
    name: i
  )
end