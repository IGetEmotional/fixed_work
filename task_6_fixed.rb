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

def rps_game_winner(arr)
begin
raise ArgumentError if(arr.size<=1 or arr.size>2)
  arr.each{|t| raise NoSuchStrategyError if !(RPS.include?t[1])}
      rescue ArgumentError
       "WrongNumberOfPlayersError"
       rescue NoSuchStrategyError
       "NoSuchStrategyError"
       else
          x = arr[0]
          y = arr[1]
 ((x[1]=="R" and y[1] == "S") or (x[1] =="P" and y[1] =="R") or (x[1]=="S" and y[1] == "P") or x[1] == y[1]) ?  x : y 
     end     
end


p rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])
p rps_game_winner([%w[player1 P], %w[player2 A]])
p rps_game_winner([%w[player1 P], %w[player2 S]])
p rps_game_winner([%w[player1 P], %w[player2 P]])