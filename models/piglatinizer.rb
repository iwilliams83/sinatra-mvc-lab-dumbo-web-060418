class PigLatinizer
  # attr_accessor :word

  def count_of_words(str)
    arr = str.split(" ")
    arr.count
  end

  def translate(word)
    alpha = ('a'..'z').to_a
    alpha << ('A'..'Z').to_a
    alpha.flatten
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels

    if word == "I" || word == 'i'
      word + 'way'
    elsif vowels.include?(word[0])
      word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word # return unchanged
    end
  end

  def piglatinize(str)
    alpha = ('a'..'z').to_a
    alpha << ('A'..'Z').to_a
    alpha.flatten
    vowels = %w[a e i o u A E I O U]

    new_sentence = []

    if count_of_words(str) == 1
      str = translate(str)
      new_sentence << str
    elsif count_of_words(str) > 1
      arr = str.split(" ")
      arr.each do |word|
        word = translate(word)
        new_sentence << word
      end
    end

    new_sentence.join(" ")

  end #def end

end #class end
