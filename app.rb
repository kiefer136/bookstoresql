require_relative './db'
require_relative './models/show'
require_relative './models/episode'

puts "Welcome to IMDB Lite"
puts "All Shows: #{Show.all}"