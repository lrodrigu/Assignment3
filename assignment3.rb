#Create a program that takes a word and provides a Scrabble score associated with that word.

class Scrabble

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def score
    letters = word.upcase.split('')

    total = 0
    letters.each do |letter|
      total += letter_scores[letter]
    end

    total
  end

  def letter_scores
    {  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end

puts "Please type your text here:"

text = gets.strip

puts Scrabble.new(text).score