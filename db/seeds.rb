# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
anime_list = [
  ["Test1","Lorem Ipsum Dolor","Kanon"],
  ["Data34","Lorem Ipsdum Dolor","Kanon"],
  ["Phone1","Lorem Ipsum Dolor","Kanon"],
  ["Ted","Lorem Ipsum Dolor","Kanon"],
  ["Notepadst1","Lorem Ipsum Dolor","Kanon"],
  ["Private","Lorem Ipsum Dolor","Ionassal"],
  ["Tdddst1","Lorem Ipsuasdsadm Dolor","Ionassal"],
  ["Atom","Lorem Ipsum Dodlor","Ionassal"],
  ["TAvast1","Avast","Ionassal"],
  ["Dickss","Bryan","Ionassal"],
  ["Flags","Biggus","Ionassal"],
]

anime_list.each do |name, description, location|
  Anime.create(name: name, description: description, location: location)
end

=end

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'example.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)

csv.each do |row|
  #t = Transaction.new
  Anime.create(name: row['Name'], description: row['Description'], location: row['Location'])

end

puts "Saved"
