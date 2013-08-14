words = []

words.push gets.chomp while words.last != ''

words.pop

begin
  swapped = false
  1.upto(words.length-1) do |word_ix|
    if words[word_ix-1] > words[word_ix]
      words[word_ix-1], words[word_ix] = words[word_ix], words[word_ix-1]
      # reducing the more because we need an extra iteration
      swapped = true
    end
  end
end until not swapped

puts
puts words
puts
