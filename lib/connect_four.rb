
class Connectfour
attr_accessor :board,:turn,:won

def initialize
@board = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42]
@player = '_'
@turn = 0
@won = false
end

def play

take_turn
end

def game_state
  puts
  puts "\t \t          Welcome to Connectfour"
  puts
  puts "\t \t \t #{@board[0]}  | #{@board[1]}  | #{@board[2]}  | #{@board[3]}  | #{@board[4]}  | #{@board[5]}  | #{@board[6]}"
  puts " \t \t  \t --------------------------------"
  puts "\t \t \t #{@board[7]}  | #{@board[8]}  | #{@board[9]} | #{@board[10]} | #{@board[11]} | #{@board[12]} | #{@board[13]}"
  puts "\t \t \t --------------------------------"
  puts "\t \t \t #{@board[14]} | #{@board[15]} | #{@board[16]} | #{@board[17]} | #{@board[18]} | #{@board[19]} | #{@board[20]}"
  puts "\t \t \t --------------------------------"
  puts "\t \t \t #{@board[21]} | #{@board[22]} | #{@board[23]} | #{@board[24]} | #{@board[25]} | #{@board[26]} | #{@board[27]}"
  puts "\t \t \t --------------------------------"
  puts "\t \t \t #{@board[28]} | #{@board[29]} | #{@board[30]} | #{@board[31]} | #{@board[32]} | #{@board[33]} | #{@board[34]}"
  puts "\t \t \t --------------------------------"
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
  win?
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

WIN_COMBINATIONS = [
  #horizontal
  [0,1,2,3],[1,2,3,4],[2,3,4,5],[3,4,5,6],[7,8,9,10],
  [7,8,9,10],[8,9,10,11],[9,10,11,12],[10,11,12,13],
[14,15,16,17],[15,16,17,18],[16,17,18,19],[17,18,19,20],
[21,22,23,24],[22,23,24,25],[23,24,25,26],[24,25,26,27],
[28,29,30,31],[29,30,31,32],[30,31,32,33],[31,32,33,34],
[35,36,37,38],[36,37,38,39],[37,38,39,40],[38,39,40,41],
#diagonally
[21,15,9,3],[38,32,26,20],[37,31,25,19],[13,19,25,31],
[28,22,16,10],[4,10,16,22],[14,22,30,38],[7,15,23,31],
[39,31,23,15],[3,11,19,27],[35,29,23,17],[5,11,17,23],
[29,23,17,11],[6,12,18,24],[36,30,24,18],[30,24,18,12],
[0,8,16,24],[40,32,24,16],[8,16,24,32],[1,9,17,25],[9,17,25,33],[2,10,18,26],[41,33,25,17],[33,25,17,9],
#vertical
[0,7,14,21],[35,28,21,14],[7,14,21,28],
[1,8,15,22],[36,29,22,15],[29,22,15,8],
[2,9,16,23],[37,30,23,16],[30,23,16,9],
[24,17,10,3],[38,31,24,17],[31,24,17,10],
[4,11,18,25],[39,32,25,18],[11,18,25,32],
[5,12,19,26],[40,33,26,19],[12,19,26,33],
[6,13,20,27],[41,34,27,20],[13,20,27,34]
]
def win?
WIN_COMBINATIONS.each do |combo|
if board[combo[0]] == board[combo[1]] && board[combo[1]]== board[combo[2]] && board[combo[2]] == board[combo[3]]
puts "Game over! #{board[combo[0]]} won"
@won = true
exit
else
false
end
end
end
end
