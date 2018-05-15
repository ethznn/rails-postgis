# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

# ------------- Region model --------------- #
columns = [:polygon]
items = []
CSV.foreach("#{Rails.root}/tmp/data/11_lot_polygon_1.txt", quote_char: "'", col_sep: "|", headers: true) do |row|
  items << [row[0]]
end
PolygonTest.import(columns, items, validate: false)