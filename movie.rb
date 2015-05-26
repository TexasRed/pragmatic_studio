class Movie
  attr_reader :title, :rank
  attr_writer :title, :rank
  attr_accessor :title, :rank

  # define the constructor
  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
    puts "Created a movie object with title #{title} and rank #{rank}"
  end

  def hit?
    @rank >= 10  
  end
  
  def status
    # hit? "Hit" : "Flop"
    if hit? 
      "Hit"
    else
      "Flop"
    end
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

  def to_s
    "#{@title} has a rank of #{self.rank} #{status}"
  end
end

if __FILE__ == $0
  movie = Movie.new("goonies", 10)
  puts movie.title
  puts movie.rank
  
  movie.thumbs_up
  movie.thumbs_down
  puts movie.rank
  
  movie.thumbs_down
  puts movie.rank
  puts movie
end