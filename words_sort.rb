words = []

words.push gets.chomp while words.last != ''

words.pop
lower_ix = -1
higher_ix = 0
more = 0
value1 = nil
value2 = nil

while more < words.length
    0.upto(words.length-1) do |word_ix|
      if lower_ix < (words.length - 1)
        if value1 != 'reset'
          value2 = value1
          value1 = words[word_ix]
            if value2 and value1 and value1 != value2
              if value2 > value1
                words[lower_ix] = value1
                words[higher_ix] = value2
                #Here, I skip over the rest of the each loop and do the
                #while loop again
                #so I don't over write any of the old values
                lower_ix += words.length
                # reducing the more because we need an extra iteration
                more -= 1
              end
            end
        else
          value1 = words[word_ix]
        end
          lower_ix += 1
          higher_ix += 1
      end
    end
    lower_ix = -1
    higher_ix = 0
    value1 = 'reset'
    value2 = 'reset'
    more += 1
end

puts
puts words
puts
