genres = %w(Action Adventure Animation Biography Comedy Crime Documentary Drama Fantasy History Horror Musical Mystery Romance Sci-Fi Thriller War Western) 

genres.each { |genre| Genre.create(name: genre) }

puts "All Genres Created.."