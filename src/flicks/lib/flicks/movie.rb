require_relative 'rankable'
require_relative 'snack_bar'

class Movie
  include Rankable

  attr_accessor :title, :rank

  # define the constructor
  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
    @snack_carbs = Hash.new(0)
    #puts "Created a movie object with title #{title} and rank #{rank}"
  end

  def self.from_csv(line)
    title, rank = line.split(',')
    Movie.new(title, Integer(rank))
  end

  def to_csv
    "#{@title},#{@rank}"
  end

  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end
  end

  def carbs_consumed
    @snack_carbs.values.reduce(0, :+)
  end

  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name}"
    puts "#{@title}'s snacks: #{@snack_carbs}"
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
