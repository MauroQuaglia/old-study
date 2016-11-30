# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Feature.delete_all
Feature.create!(title: 'Vetrine', description: 'Creare delle vetrine per dare visibilità a un negozio.')
Feature.create!(title: 'Database unico degli utenti ', description: 'Creare un microservizio che possa gestire gli utenti.')