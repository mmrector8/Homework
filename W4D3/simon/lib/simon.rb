class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    # until game is over
    until @game_over == true
    #call take turn
      self.take_turn
    # call game over message and reset game
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    result = self.require_sequence
      if @seq == result
        self.round_success_message
        self.add_random_color
        self.increase_sequence
      else
        @game_over = true
      end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      end
  end

  def increase_sequence
    @sequence_length += 1
  end

  def require_sequence
  # he goal of require_sequence is to prompt the user to repeat back the new sequence 
    puts "please repeat back the new sequence with a comma in between each color"
    input_seq = []
      input_seq << gets.chomp
  #that was just shown to them, one color at a time
  input_seq
  end

  def add_random_color
      random = Simon::COLORS.sample
      @seq << random
  end

  def round_success_message
    puts "congrats, you passed this round!"
  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
