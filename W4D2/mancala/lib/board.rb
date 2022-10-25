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
    if start_pos < 1 || start_pos > 13
    raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    #while the length of the array at starting position is greater than one
    i = start_pos+1
   
    while @cups[start_pos].length > 0
      
      i = 0 if i > 13
        if current_player_name == @name1 && i != 13 
          @cups[i] << @cups[start_pos].shift 
        elsif current_player_name == @name2 && i != 6
          @cups[i] << @cups[start_pos].shift
        end
      i +=1
    end
     self.render
     next_turn(i)
  end


  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
      if ending_cup_idx == 7 || ending_cup_idx ==14
        return :prompt
      elsif @cups[ending_cup_idx-1].length ==  1
        return :switch
      else
        return ending_cup_idx-1
      end
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
     if @cups[6].length == @cups[13].length
          return :draw
      elsif @cups[6].length > @cups[13].length
          return @name1
      else
          return @name2
      end
  end
end
