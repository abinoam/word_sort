words = []

words.push gets.chomp while words.last != ''

words.pop

begin
  swapped = false
  0.upto(words.length-2) do |word_ix|
    prev_word = words[word_ix]
    next_word = words[word_ix+1]
    if prev_word > next_word
      words[word_ix] = next_word
      words[word_ix+1] = prev_word
      # reducing the more because we need an extra iteration
      swapped = true
    end
  end
end until not swapped

puts
puts words
puts
