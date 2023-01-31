#require "pry"

class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
        #@show_state = life_poits
    end
# voir l'état du joueur
    def show_state
    puts "#{@name} a #{@life_points} points de vie"
    end
# subir une attaque
    def gets_damage(damage)
        @life_points = @life_points - damage
        if @life_points <= 0
            puts "Le joueur #{@name} a été tué !"
        end
    end

#Attaquer
# dé virtuel
        def compute_damage
            return rand(1..6)
        end
#Attack
        def attacks(ennemi)
            puts "Le joueur #{@name} attaque le joueur #{ennemi.name}"
            hit = compute_damage 
            ennemi.gets_damage(hit)
        puts "Il lui inflige #{hit} points de dommages !"
        end
end

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name)
        @life_points = 100
        @weapon_level = 1
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        #Elle va commencer par lancer un dé
        def compute_damage
            rand(1..6)
            puts "Tu as trouvé une arme de niveau #{@rand}"
        end

    end


end



#binding.pry
#puts "end_of_file"
