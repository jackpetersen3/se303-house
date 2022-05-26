class House
    PHRASES = [
        " the malt that lay in",
        " the rat that ate",
         " the rat that ate",
        " the cat that killed",
        " the dog that worried",
        " the cow with the crumpled horn that tossed",
        " the maiden all forlorn that milked",
        " the man all tattered and torn that kissed",
        " the priest all shaven and shorn that married",
        " the rooster that crowed in the morn that woke",
        " the farmer sowing his corn that kept",
        " the horse and the hound and the horn that belonged to" 
    ]

    def line(number)
        "This is#{phrase(number)}#{farmer(number)}#{rooster(number)}#{priest(number)}#{man(number)}#{maiden(number)}#{cow(number)}#{dog(number)}#{cat(number)}#{rat(number)}#{malt(number)} the house that Jack built.\n"
    end
    
    def horse(number)
        if number >= 12
            " the horse and the hound and the horn that belonged to" 
        end
    end

    def farmer(number)
        if number >= 11
            " the farmer sowing his corn that kept"
        end
    end 

    def rooster(number)
        if number >= 10
            " the rooster that crowed in the morn that woke"
        end
    end
    def priest(number)
        if number >= 9
            " the priest all shaven and shorn that married"
        end
    end
    
    def man(number)
        if number >= 8
            " the man all tattered and torn that kissed"
        end
    end

    def maiden(number)
        if number >=7
            " the maiden all forlorn that milked"
        end
    end

    def cow(number)
        if number >=6
            " the cow with the crumpled horn that tossed"
        end
    end

    def dog(number)
        if number >= 5
            " the dog that worried"
        end
    end 

    def cat(number)
        if number >= 4
            " the cat that killed"
        end
    end

    def rat(number)
        if number >= 3
            " the rat that ate"
        end 
    end

    def malt(number)
        if number >= 2
            " the malt that lay in"
        end
    end

    def phrase(number)
    end

    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end
end