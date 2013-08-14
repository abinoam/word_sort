words = []

words.push gets.chomp while words.last != ''

words.pop
lower_ix = -1
higher_ix = 0
more = 0
next_word = nil
prev_word = nil

while more < words.length
    0.upto(words.length-1) do |word_ix|
        prev_word = next_word
        next_word = words[word_ix]
        if prev_word != :reset
            if prev_word and next_word and next_word != prev_word
              if prev_word > next_word
                words[lower_ix] = next_word
                words[higher_ix] = prev_word
                # reducing the more because we need an extra iteration
                more -= 1
                #Here, I skip over the rest of the each loop and do the
                #while loop again
                #so I don't over write any of the old values
                break
              end
            end
        end
          lower_ix += 1
          higher_ix += 1
    end
    lower_ix = -1
    higher_ix = 0
    next_word = :reset
    prev_word = :reset
    more += 1
end

puts
puts words
puts
