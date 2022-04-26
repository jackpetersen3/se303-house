class House

    def line(number)
        case number 
        when 1   
             "This is the house that Jack built.\n"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        when 3
            "This is the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 7
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "This is the#{horse_and_hound(number)}#{farmer(number)}#{rooster(number)}#{priest(number)} man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
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


    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end
end