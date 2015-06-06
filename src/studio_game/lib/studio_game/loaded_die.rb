module StudioGame
  class LoadedDie
    include Auditable

    attr_reader :number

    def roll
      @number = [1, 1, 2, 5, 6, 6].sample
      audit
      @number
    end

  end
end
