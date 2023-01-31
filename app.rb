require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new('José')

while player1.life_points > 0 || player2.life_points > 0
    break if player2.life_points <= 0 || player1.life_points <= 0
        #then "le joueur est mort !!!!!" 
    puts
    #end
    #break if player1.life_points == 0 || player2.life_points == 0
    #life_points = life_points + 1
    
    puts "Voici l'état de chaque joueurs :"

    player1.show_state
    player2.show_state
    puts
    puts

    #puts "Passons à la phase d'attaque :"

    player1.attacks(player2)
    player2.attacks(player1)
    puts
    puts

end




#binding.pry
#puts "end of file"