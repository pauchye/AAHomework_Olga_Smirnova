class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []


  end

  def play
    until game_over
      take_turn 
    end
    game_over_message
    reset_game
  end

  def take_turn
    if require_sequence == show_sequence
      round_success_message
      self.sequence_length += 1
    else
      game_over = true
    end
  end

  def show_sequence
    add_random_color
    
  end

  def require_sequence
    # gets

  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message
    # blah blah

  end

  def game_over_message
    # blah blah

  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
