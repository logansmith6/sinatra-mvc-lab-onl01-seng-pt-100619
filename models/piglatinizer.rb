class PigLatinizer
  attr_reader :word

def initialize(word)
  @word = word
end 


def piglatinize(word)
  @word = word.downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  words = word.split(' ')
  result = []

  words.each_with_index do |word, i|
    translate = ''
    qu = false
    if vowels.include? word[0]
      translate = word + 'ay'
      result.push(translate)
    else
      word = word.split('')
      counter = 0
      word.each_with_index do |char, index|
        if vowels.include? char
          if char == 'u' && translate[-1] == 'q'
            qu = true
            translate = words[i][count + 1..words[i].length] + translate + 'uay'
            result.push(translate)
            next
          end
          break
        else
          if char == 'q' && word[i+1] == 'u'
            qu = true
            translate = words[i][count+2..words[i].length] + 'quay'
            result.push(translate)
            next
          else
            translate += char
          end
          count += 1
        end
      end
      if not qu
        translate = words[i][count..words[i].length] + translate + 'ay'
        result.push(translate)
      end
    end
  end
      @word = result.join(' ')

   end
end
