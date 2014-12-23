require 'roo'
require_relative 'game'

s = Roo::Excelx.new("/Users/kaipowell/Downloads/NFL PickEm & Suicide (2).xlsx")
games = (5..20).map do |row_number|
  Game.new(favored: s.column(8)[row_number],
           spread: s.column(9)[row_number],
           unfavored: s.column(10)[row_number])
end
games.each do |game|
  puts game.return_as_row
end