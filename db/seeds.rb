# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Boro.delete_all
Neighborhood.delete_all
User.delete_all

queens = Boro.create({name: "Queens"})
bronx = Boro.create({name: "Bronx"})
staten_island = Boro.create({name: "Staten Island"})
brooklyn = Boro.create({name: "Brooklyn"})
manhattan = Boro.create({name: "Manhattan"})

# Northwestern Queens
astoria = Neighborhood.create({boro_id: 1, name: "Astoria"})
corona = Neighborhood.create({boro_id: 1, name: "Corona"})
east_elmhurst = Neighborhood.create({boro_id: 1, name: "East Elmhurst"})
elmhurst = Neighborhood.create({boro_id: 1, name: "Elmhurst"})
forest_hills = Neighborhood.create({boro_id: 1, name: "Forest Hills"})
fresh_pond = Neighborhood.create({boro_id: 1, name: "Fresh Pond"})
glendale = Neighborhood.create({boro_id: 1, name: "Glendale"})
hunters_point = Neighborhood.create({boro_id: 1, name: "Hunters Point"})
jackson_heights = Neighborhood.create({boro_id: 1, name: "Jackson Heights"})
lic = Neighborhood.create({boro_id: 1, name: "Long Island City"})
maspeth = Neighborhood.create({boro_id: 1, name: "Maspeth"})
middle_village = Neighborhood.create({boro_id: 1, name: "Middle Village"})
rego_park = Neighborhood.create({boro_id: 1, name: "Rego Park"})
ridgewood = Neighborhood.create({boro_id: 1, name: "Ridgewood"})
sunnyside = Neighborhood.create({boro_id: 1, name: "Sunnyside"})
woodside = Neighborhood.create({boro_id: 1, name: "Woodside"})

# Between Midtown and Downtown
# http://en.wikipedia.org/wiki/List_of_Manhattan_neighborhoods
flower_district = Neighborhood.create({boro_id: 5, name: "Flower District"})
brookdale = Neighborhood.create({boro_id: 5, name: "Brookdale"})
kips_bay = Neighborhood.create({boro_id: 5, name: "Kips Bay"})
rose_hill = Neighborhood.create({boro_id: 5, name: "Rose Hill"})
no_mad = Neighborhood.create({boro_id: 5, name: "NoMad"})
peter_cooper_village = Neighborhood.create({boro_id: 5, name: "Peter Cooper Village"})
chelsea = Neighborhood.create({boro_id: 5, name: "Chelsea"})
flatiron_district = Neighborhood.create({boro_id: 5, name: "Flatiron District"})
gramercy_park = Neighborhood.create({boro_id: 5, name: "Gramercy Park"})
stuyv_square = Neighborhood.create({boro_id: 5, name: "Stuyvesant Square"})
union_square = Neighborhood.create({boro_id: 5, name: "Union Square"})
stuyv_town = Neighborhood.create({boro_id: 5, name: "Stuyvesant Town"})
meatpacking_dist = Neighborhood.create({boro_id: 5, name: "Meatpacking District"})
waterside_plaza = Neighborhood.create({boro_id: 5, name: "Waterside Plaza"})
