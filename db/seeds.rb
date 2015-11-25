# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Player.destroy_all
require 'csv'
#CSV.foreach("#{Rails.root}/players.csv", headers: true).each do |row|
#    Player.create!(row.to_hash)
#end
Match.create(team1_id: 1, team2_id: 2, date: "2015-01-29")
Goal.create(match_id: 3, player_id: 197, opponent_id: 1)
Goal.create(match_id: 3, player_id: 197, opponent_id: 1)
Goal.create(match_id: 3, player_id: 196, opponent_id: 2)
