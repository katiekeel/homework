# How will you know when the problem is solved? (Identify the big-picture goal)
# How do you want to use the software? (Identify the “interface”)
# What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
# How do we achieve this goal? (Sketch an algorithm using pseudocode)

ready_to_quit = false
goodbye_counter = 0

puts "HELLO, THIS IS A GROCERY STORE!"

until ready_to_quit
  input = gets.chomp
  if input == ""
    puts "HELLO?!"
  elsif input != input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
  elsif input == input.upcase and input != "GOODBYE!"
    puts "NO, THIS IS NOT A PET STORE"
  elsif input == "GOODBYE!" && goodbye_counter == 0
    puts "ANYTHING ELSE I CAN HELP WITH?"
    goodbye_counter = 1
  else input == "GOODBYE!" && goodbye_counter != 0
    puts "THANKS FOR CALLING!"
    ready_to_quit = true
  end
end
