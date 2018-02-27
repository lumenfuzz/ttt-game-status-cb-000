# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  result_val = nil
  dummy = WIN_COMBINATIONS.each do |win|
    board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X" ? result_val = win : nil
  end
  result_val
end
