class House    
    def phrases
        [
            " the house that Jack built.\n",
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
    end

    def initialize(prefix = 'This is', seed = 0)
        @prefix = prefix
        @seed = seed
    end

    def line(number)
        "#{@prefix}#{phrase(number)}"
    end
    
    def phrase(number)
        (number - 1).downto(0).collect { |i| phrases[i]}.join("")
    end

    def recite
        (1..12).each.collect { |number| line(number) }.join("\n")   
    end

    def randomize
        phrases.shuffle(random: Random.new(@seed))
        recite
    end
end

class NormalHouse < House
end

class RandomSubjectVerb < House
    def subject
        [
            " the house ",
            " the malt ",
            " the rat ",
            " the cat ",
            " the dog ",
            " the cow with the crumpled horn ",
            " the maiden all forlorn ",
            " the man all tattered and torn ",
            " the priest all shaven and shorn ",
            " the rooster that crowed in the morn ",
            " the farmer sowing his corn ",
            " the horse and the hound and the horn " 
        ].shuffle(seed)
    end

    def verb
        [
            "that Jack built.\n",
            "that lay in",
            "that ate",
            "that killed",
            "that worried",
            "that tossed",
            "that milked",
            "that kissed",
            "that married",
            "that woke",
            "that kept",
            "that belonged to" 
        ].shuffle(seed)
    end

    def phrase(number)
        (number - 2).downto(0).collect { |i| subject[i] + verb[i]}.join("")
    end
end