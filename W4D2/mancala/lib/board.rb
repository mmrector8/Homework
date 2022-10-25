require_relative "./player.rb"
class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14)
    @name1 = name1
    @name2 = name2
    (0...14).each do |i|
      if i == 6 || i == 13
        @cups[i] = []
      else
        @cups[i] = place_stones
      end
    end

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    [:stone, :stone, :stone, :stone]
  end

  def valid_move?(start_pos)
    if start_pos == 0 || start_pos == 14
      raise "Starting cup is empty"
    end
    if start_pos < 1 || start_pos > 14
    raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    
    #until the array at the current position is empty
    until @cups[start_pos].length == 0
        i = start_pos+1
        i = 0 if i >13

          if current_player_name == @name1 && i !=13
            @cups[i] << @cups[start_pos].shift

          elsif current_player_name == @name2 && i != 6
            @cups[i] << @cups[start_pos].shift
          end
          i+=1
    end
      ending_idx = i if @cups[start_pos].length == 0
      return next_turn(ending_idx)
  end


  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
      #if player ends in own cup, return :prompt
      #call mancala.take_turn
      # if current player ends on a cup that has stones in i
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0...5).each {|i| return false if cups[i] != []} ||
    (7...13).each {|i| return false if cups[i] != []}

    true
  end

  def winner
    if one_side_empty?
        if @cups[6].length == @cups[13].length
          return :draw
        elsif @cups[6].length > @cups[13].length
          return @player1.name
        else
          return @player2.name
        end
    end
  end
end
