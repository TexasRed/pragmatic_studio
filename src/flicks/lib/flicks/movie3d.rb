require_relative 'movie'

class Movie3D < Movie

  attr_accessor :wow_factor
  
  def initialize(title, rank, wow_factor)
    super(title, rank)
    @wow_factor = wow_factor
  end

  def thumbs_up
    @wow_factor.times { super }
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end

end

if __FILE__ == $0
  movie3d = Movie3D.new('glee',5, 20)
  puts movie3d.title
  puts movie3d.rank

  puts movie3d
  puts movie3d.show_effect
  puts movie3d.thumbs_up
  puts movie3d
end
