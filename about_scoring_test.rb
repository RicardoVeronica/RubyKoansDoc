require 'minitest/autorun'

# def score(dice)
  # total_score = 0
  # counts = Hash.new(0)

  # dice.each { |number| counts[number] += 1 }

  # counts.each do |number, count|
  #   if count >= 3
  #     total_score += 1000 if number == 1
  #     total_score += number * 100 if number != 1
  #     count -= 3
  #   end
  # end
# end

# puts score([1, 1, 1, 5, 1])

# total_score += count * 100 if number == 1
# total_score += count * 50 if number == 5

def score(dice)
  dice
end

puts score [1, 1, 1, 5, 1]
