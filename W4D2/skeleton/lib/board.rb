class Board
  attr_accessor :cups
 # attr_reader :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new(4, :stone)} 
    @cups[6] = []
    @cups[13] = []

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 13 || start_pos < 0
      raise ArgumentError.new "Invalid starting cup"
    end

    if self.cups[start_pos].empty?
      raise ArgumentError.new "Starting cup is empty"
    end

  end

  def make_move(start_pos, current_player_name)
    stones = self.cups[start_pos].length
    self.cups[start_pos] = []
    i = 1
    until stones == 0
      new_pos = (start_pos + i) % 14
      if current_player_name == @name1
        if new_pos != 13 
          self.cups[new_pos] << :stone
          stones -= 1
        end
      else
        if new_pos != 6 
          self.cups[new_pos] << :stone
          stones -= 1
        end
      end
      i += 1
    end
    
    self.render
    self.next_turn(new_pos)

  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end

    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty? }
    
  end

  def winner
    player1_count = @cups[6].count
    player2_count = @cups[13].count

    if player1_count == player2_count
      :draw
    else
      if player1_count > player2_count
        return @name1 
      else
        return @name2
      end
    end
  end
end
