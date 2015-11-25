available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(10)

puts "***Automatic Golf Club Advice:"

possible_club_selections.each do |selection|
  puts "Use the #{selection.to_s.gsub("_", " ")}!"
end

print "\n"

[:driver, :pitching_wedge, :putter].each do |required_club|
  if !possible_club_selections.include?(required_club)
    puts "WARNING! This selection does not contain a #{required_club.to_s.gsub("_", " ")}!"
  end
end
