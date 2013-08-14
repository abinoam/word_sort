words = []

words.push gets.chomp while words.last != ''

words.pop
num1 = -1
num2 = 0
more = 0
value1 = nil
value2 = nil

while more < words.length
    words.each do |word|
      if num1 < (words.length - 1)
        if value1 != 'reset'
          value2 = value1
          value1 = word
            if value2 != nil and value1 != nil and value1 != value2
              if value2 > value1
                words[num1] = value1
                words[num2] = value2
                #Here, I skip over the rest of the each loop and do the
                #while loop again
                #so I don't over write any of the old values
                num1 = num1 + words.length
                # reducing the more because we need an extra iteration
                more = more - 1
              end
            end
        else
          value1 = word
        end
          num1 = num1 + 1
          num2 = num2 + 1
      end
    end
    words = words
    num1 = -1
    num2 = 0
    word = nil
    value1 = 'reset'
    value2 = 'reset'
    more = more + 1
end

puts
puts words
puts
