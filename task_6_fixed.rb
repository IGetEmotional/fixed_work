=begin
Разработать методы для программы Камень-Ножницы-Бумага.
Метод rps_game_winner должен принимать на вход массив следующей структуры
[ ["player1", "P"], ["player2", "S"] ], где P - бумага, S - ножницы, R - камень, и
функционировать следующим образом:
• если количество игроков больше 2 необходимо вызывать исключение
WrongNumberOfPlayersError;
• если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать
исключение NoSuchStrategyError;
• в иных случаях необходимо вернуть имя и ход победителя, если оба
игрока походили одинаково - выигрывает первый игрок.
=end


RPS = %w[R P S]

class NoSuchStrategyError< StandardError
end

class WrongNumberOfPlayersError< ArgumentError
end

def rps_game_winner(array)
  fail WrongNumberOfPlayersError if (array.size <= 1 || array.size > 2)
  array.each{ |strategy| fail NoSuchStrategyError unless RPS.include?(strategy[1]) }
  hash = { "R" => "S", "P" =>"R", "S" =>"P" }
  hash.each{ |a, b| return array[0] if array[0][1] == a  && array[1][1] == b }
  array[1]
end


p rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])
p rps_game_winner([%w[player1 P], %w[player2 A]])
p rps_game_winner([%w[player1 P], %w[player2 S]])
p rps_game_winner([%w[player1 P], %w[player2 P]])
