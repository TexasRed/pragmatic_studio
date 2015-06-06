file = File.open("movies.csv")
# read file
file.close

File.open("movies.csv") do |file|
  file.each_line do |line|
    puts line
  end
end

File.readlines("movies.csv").each do |line|
  title, rank = line.split(',')
  movie = Movie.new(title, rank)
  puts movie
end

movies = []
File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title},#{movie.rank}"
  end
end
