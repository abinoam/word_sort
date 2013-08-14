words = []

words.push gets.chomp while words.last != ''

words.pop
more = 0

while more < 1
    0.upto(words.length-2) do |word_ix|
        prev_word = words[word_ix]
        next_word = words[word_ix+1]
            if prev_word and next_word and next_word != prev_word
              if prev_word > next_word
                words[word_ix] = next_word
                words[word_ix+1] = prev_word
                # reducing the more because we need an extra iteration
                more -= 1
                #Here, I skip over the rest of the each loop and do the
                #while loop again
                #so I don't over write any of the old values
                break
              end
            end
    end
    more += 1
end

puts
puts words
puts
