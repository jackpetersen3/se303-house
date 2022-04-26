class House

    def line(number)
        case number 
        when 1   
             "This is the house that Jack built.\n"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        else
            "This is the#{horse_and_hound(number)}#{farmer(number)}#{rooster(number)}#{priest(number)}#{man(number)}#{maiden(number)}#{cow(number)}#{dog(number)}#{cat(number)} rat that ate the malt that lay in the house that Jack built.\n"
        end
    end
    
    def horse_and_hound(number)
        if number >= 12
            " horse and the hound and the horn that belonged to the" 
        else  
            ""
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

    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end
end