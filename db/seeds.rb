# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'menu.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Menu.new
  t.category = row['category']	
  t.type_num = row['type_num']
  t.name = row['name']	
  t.need_coin = row['need_coin']
  t.description = row['description']
  t.coin_percent = row['coin_percent']
  t.exp_percent = row['exp_percent']
  t.other_percent = row['other_percent']
  t.save
end