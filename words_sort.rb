words = []

words.push gets.chomp while words.last != ''

words.pop
num1 = -1
num2 = 0
more = 0
value1 = nil
value2 = nil

while more < words.length
    0.upto(words.length-1) do |word_ix|
      if num1 < (words.length - 1)
        if value1 != 'reset'
          value2 = value1
          value1 = words[word_ix]
            if value2 and value1 and value1 != value2
              if value2 > value1
                words[num1] = value1
                words[num2] = value2
                #Here, I skip over the rest of the each loop and do the
                #while loop again
                #so I don't over write any of the old values
                num1 += words.length
                # reducing the more because we need an extra iteration
                more -= 1
              end
            end
        else
          value1 = words[word_ix]
        end
          num1 += 1
          num2 += 1
      end
    end
    num1 = -1
    num2 = 0
    value1 = 'reset'
    value2 = 'reset'
    more += 1
end

puts
puts words
puts
