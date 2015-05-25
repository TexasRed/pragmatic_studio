class Movie
  attr_reader :title, :rank
  attr_writer :title, :rank
  attr_accessor :title, :rank


  def initialize(title, rank = 8)
    @title = title.capitalize
    @rank = rank
    puts "Created a movie object with title #{title} and rank #{rank}"
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def normalized_rank
  	@rank / 10.0
  end

  # Override
  def to_s
    "#{@title} has a rank of #{self.normalized_rank}"
  end
end

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger")

movie2.thumbs_up
movie3.thumbs_down

puts movie1
puts movie2
puts movie3

puts movie1.title
puts movie1.rank

movie1.title = "Gooneys!"
movie1.rank = 1

puts movie1.title
puts movie1.rank
puts movie1.normalized_rank

