class House

    def line(number)
        "This is the#{horse(number)}#{farmer(number)}#{rooster(number)}#{priest(number)}#{man(number)}#{maiden(number)}#{cow(number)}#{dog(number)}#{cat(number)}#{rat(number)}#{malt(number)} house that Jack built.\n"
    end
    
    def horse(number)
        if number >= 12
            " horse and the hound and the horn that belonged to the" 
        end
    end

    def farmer(number)
        if number >= 11
            " farmer sowing his corn that kept the"
        end
    end 

    def rooster(number)
        if number >= 10
            " rooster that crowed in the morn that woke the"
        end
    end
    def priest(number)
        if number >= 9
            " priest all shaven and shorn that married the"
        end
    end
    
    def man(number)
        if number >= 8
            " man all tattered and torn that kissed the"
        end
    end

    def maiden(number)
        if number >=7
            " maiden all forlorn that milked the"
        end
    end

    def cow(number)
        if number >=6
            " cow with the crumpled horn that tossed the"
        end
    end

    def dog(number)
        if number >= 5
            " dog that worried the"
        end
    end 

    def cat(number)
        if number >= 4
            " cat that killed the"
        end
    end

    def rat(number)
        if number >= 3
            " rat that ate the"
        end 
    end

    def malt(number)
        if number >= 2
            " malt that lay in the"
        end
    end

    def phrase(number)
    end

    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end
end