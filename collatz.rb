# def Collatz
#
#
#
# end




def collatz_conjecture(starting_point)

  digits = []
  starting_point = starting_point.to_i
  original = starting_point
  until digits.last(6) == [4, 2, 1, 4, 2, 1]
    if starting_point.even?
      starting_point = starting_point / 2
      digits << starting_point
    else
      starting_point = starting_point * 3 + 1
      digits << starting_point
    end
  end

  puts
  puts "#{original} here:"
  print digits
  puts
  # puts
  # puts "that's #{digits.length} items."
  

end

# puts
# puts "give me a starting number"
# input = gets.chomp
# puts collatz_conjecture(input)


def collatz_loop(starting = 100, ending = 10000)
  until starting == ending
    collatz_conjecture(starting)
    starting += 1
  end

end

print collatz_loop
