
class Connectfour
attr_accessor :board,:turn

def initialize
@board = Array.new(42,' ')
@player = '_'
@turn = 0
end

def play

take_turn
end

def game_state
  puts
  puts "\t \t          Welcome to Connectfour"
  puts
  puts "\t \t \t #{@board[0]} | #{@board[1]} | #{@board[2]} | #{@board[3]} | #{@board[4]} | #{@board[5]} | #{@board[6]}"
  puts " \t \t  \t -------------------------"
  puts "\t \t \t #{@board[7]} | #{@board[8]} | #{@board[9]} | #{@board[10]} | #{@board[11]} | #{@board[12]} | #{@board[13]}"
  puts "\t \t \t -------------------------"
  puts "\t \t \t #{@board[14]} | #{@board[15]} | #{@board[16]} | #{@board[17]} | #{@board[18]} | #{@board[19]} | #{@board[20]}"
  puts "\t \t \t -------------------------"
  puts "\t \t \t #{@board[21]} | #{@board[22]} | #{@board[23]} | #{@board[24]} | #{@board[25]} | #{@board[26]} | #{@board[27]}"
  puts "\t \t \t -------------------------"
  puts "\t \t \t #{@board[28]} | #{@board[29]} | #{@board[30]} | #{@board[31]} | #{@board[32]} | #{@board[33]} | #{@board[34]}"
  puts "\t \t \t -------------------------"
  puts "\t \t \t #{@board[35]} | #{@board[36]} | #{@board[37]} | #{@board[38]} | #{@board[39]} | #{@board[40]} | #{@board[41]}"
  puts
end

def take_turn
  until turn == 42
  game_state

  turn.even? ?  player = '⏺' : player = '○'
  puts "\t \t Player #{player} Enter a square (1-42)"
  input = gets.chomp.to_i - 1

  if input > 43 || input == -1
  puts "\t \t Invaid,please enter a number between 1 and 42"

elsif board[input] == '⏺' || board[input] == '○'
  puts "\t \t Square has already been taken!"

  else
  board[input] = "#{player}"
  @turn += 1
  draw
  end
  end

end

def draw
  if @turn == 42
  p "Game Over! Draw! Nobody Won!"
  exit
  else
    false
  end
end


end
