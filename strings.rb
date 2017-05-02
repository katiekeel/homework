# f = "First"
# l = "Last"
#
# # What code can you write to output the string "FirstLast"?
# # What code can you write to output the string "LastFirst"?
# # What code can you write to output the string "First Last"?
# # What code can you write to output the string "Last First Last First"?
#
# puts f + l
# puts l + f
# puts "#{f} " + "#{l}"
# puts "#{l} " + "#{f} " + "#{l} " + "#{f}"
#
#
# name_1 = "Megan Smith"
# name_2 = "Todd Park"
#
# # Can you come up with two ways to output just the fragment "Megan" from name_1?
# # Would either of your techniques from A would work to output "Todd" from name_2? Why or why not?
# # Write code that can output the initials of name_2.
#
# puts name_1[0..4]
# puts name_1[-11, 5]
# puts name_2[-9] + name_2[5]
#
# a = 12
# b = 65
# c = 31
# d = 98
#
# # Write code to find the average of these four numbers.
# # Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
# # Say you have the operation a + b * c / d. What result do you get out from Ruby? What other outputs can you get out by adding one or more pairs of parentheses to the equation?
#
# puts (a + b + c + d) / 4
# puts a + b * (c / d)
#
# a = "Ezra"
# b = "Ada"
# c = "Yukihiro"
# d = "Grace"
#
# # Write code to output both the total characters in all the names together and the average length of the names.
#
# puts a.length + b.length + c.length + d.length
# puts (a.length + b.length + c.length + d.length) / 4



# In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you turn four we'd say "Happy happy happy happy birthday!" Note the capitalization.

# Say you have an age variable that holds the person's age. Write code to output the appropriate greeting.

# age = 6
#
# puts "Happy " + ("happy " * (age - 1)) + "birthday!"


# There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?
# k = "Kalamazoo"
# d = "Denver"
#
# puts "#{k[0]}" + "#{k.length - 2}" + "#{k[-1, 1]}"
# puts "#{d[0]}" + "#{d.length - 2}" + "#{d[-1, 1]}"
