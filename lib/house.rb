class House    
    PHRASES = [
        " the malt that lay in",
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

    def initialize(beginning = 'This is')
        @beginning = beginning
    end

    def line(number)
        "#{@beginning}#{phrase(number)} the house that Jack built.\n"
    end
    
    def phrase(number)
        (number - 2).downto(0).collect { |i| PHRASES[i]}.join("")
    end

    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end
end

class Shuffled < House

    def shuffle_phrases
        PHRASES.shuffle
    end
    def line(number)
        shuffle_phrases
        "#{@beginning}#{phrase(number)} the house that Jack built.\n"
    end
end