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
  text_file = File.open("collatz.txt", "a")
  text_file << "#{original} here: \n"
  text_file << "#{digits}\n"
  text_file << "that's #{digits.length} items\n#{digits.max} is the highest number\n\n"
  text_file.close
end

def collatz_loop(starting = 100, ending = 110)
  until starting == ending
    collatz_conjecture(starting)
    starting += 1
  end
end

print collatz_loop
