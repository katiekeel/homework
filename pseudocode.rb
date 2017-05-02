# How will you know when the problem is solved? (Identify the big-picture goal)
# How do you want to use the software? (Identify the “interface”)
# What’s the (next-)most trivial possible case? (Identify the next small-picture goal)
# How do we achieve this goal? (Sketch an algorithm using pseudocode)

ready_to_quit = false
puts "HELLO, THIS IS A GROCERY STORE!"

input = gets
until ready_to_quit == true
  if input.empty?
    puts "HELLO?!"
    break
    # doesn't work
  elsif input == input.upcase && input != "GOODBYE!"
    puts "NO, THIS IS NOT A PET STORE"
    break
    # works for all caps but not if input is "GOODBYE!"
  elsif input != input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU."
    break
    # works
  elsif input == "GOODBYE!"
    puts "ANYTHING ELSE I CAN HELP WITH?"
    break
    # doesn't work - returns first if
  end
  ready_to_quit == true
  puts "THANK YOU FOR CALLING!"
  # doesn't work
end
