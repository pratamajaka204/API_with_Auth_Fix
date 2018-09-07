# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'foo', password: Digest::SHA2.hexdigest('secret'))
Bicycle.create!(name: 'Sepeda Kumbang,', series: 'SK-01')
Bicycle.create!(name: 'Sepeda Gunung,', series: 'SK-02')
Bicycle.create!(name: 'Sepeda Ontel,', series: 'SK-03')