puts "Creating seeds..."

Alien.destroy_all

5.times {
    Alien.create(
        name: Faker::Movies::StarWars.character,
        earth_disguise_name: Faker::Name.name,
        home_planet: Faker::Books::Dune.planet,
        light_years_to_home_planet: Faker::Number.within(range: 5..500)
    )
}

# ********************
# Write code to seed Earthlings here
# ********************

# ********************
# Write code to seed Visitations here
# ********************

puts "Seeding completed successfully..."
