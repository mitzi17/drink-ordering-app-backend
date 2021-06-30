# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


order_one = Order.create(date: Date.today.prev_day)
order_two = Order.create(date: Date.today)

drink_one = order_one.drinks.create(base: 'milk tea', flavor: 'none', size: 'large', add_on: 'honey boba')
drink_two = order_one.drinks.create(base: 'jasmine green tea', flavor: 'honey', size: 'medium', add_on: 'honey boba')
drink_three = order_two.drinks.create(base: 'jasmine green tea', flavor: 'passion fruit', size: 'large', add_on: 'none')