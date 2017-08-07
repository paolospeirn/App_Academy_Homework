class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      take_turn
    end

      game_over_message
      reset_game
  end

  def take_turn
    @sequence_length += 1
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      add_random_color
    end

  end

  def show_sequence
    add_random_color

    @seq.each do |color|
      puts color
      sleep(1)
      system("clear")
      sleep(1)
    end
  end

  def require_sequence
    puts "Type each color in order"

    @seq.each do |color|
      user_color = gets.chomp
      unless color == user_color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS[rand(3)]
  end

  def round_success_message
    puts "You got it! Next color:"
  end

  def game_over_message
    puts "**Game Over** Play again?"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end
