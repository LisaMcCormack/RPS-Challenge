class Turn

  GAME_RULES = {
     rock: {rock: :draw, paper: :lose, scissors: :win },
     paper: {paper: :draw, rock: :win, scissors: :lose},
     scissors: {scissors: :draw, rock: :lose, paper: :win}
  }

  attr_reader :shape, :computer_shape

  def initialize(options)
    @shape = options["shape"]
    @computer_shape = options["computer_shape"]
  end



  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    GAME_RULES[@shape][@computer_shape]
  end


end
