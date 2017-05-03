# The below is the first, most intuitive way to do superfizzbuzz without class
# methods

100.times do |num|
   num % 7 == 0
     puts "Super!"
   num % 5 == 0
     puts "Buzz!"
   num % 3 == 0
     puts "Fizz!"
   num % 7 == 0 && num % 5 == 0 && num % 3 == 0
     puts "SuperFizzBuzz!"
   num % 7 == 0 && num % 5 == 0
     puts "SuperBuzz!"
   num % 7 == 0 && num % 3 == 0
     puts "SuperFizz!"
   num % 5 == 0 && num % 3 == 0
     puts "FizzBuzz!"
   num % 7 != 0 && num % 5 != 0 && num % 3 != 0
     puts num
 end

# Here we define a class, SuperFizz

class SuperFizz

# Here we use attr_reader to make sure we can read and change the initialized
# variables, num and result

  attr_reader :num, :result

  def initialize(num)
    @num = num
    @result = ""
  end

  # The below is the implementation of the first way above, but using a method
  # implementation that we define

  def run1
    if num % 7 == 0 && num % 5 == 0 && num % 3 == 0
       "SuperFizzBuzz!"
     elsif num % 7 == 0 && num % 5 == 0
       "SuperBuzz!"
     elsif num % 7 == 0 && num % 3 == 0
       "SuperFizz!"
     elsif num % 5 == 0 && num % 3 == 0
       "FizzBuzz!"
     elsif num % 7 == 0
       "Super!"
     elsif num % 5 == 0
       "Buzz!"
     elsif num % 3 == 0
       "Fizz!"
     else
       puts num
     end

  # The above is a cleaner, shorter refactoring of the above superfizzbuzz with
  # our own homemade methods

   def run
     if num % 7 == 0
       result << "Super"
     end

     if num % 3 == 0
       result << "Fizz"
     end

     if num % 5 == 0
       result << "Buzz"
     end

     if result.empty?
       result << num.to_s
     end

     result
   end

## The below is an even shorter refactor of the above method; it's called a
## predicate method - it's predicated on the arguments provided in other
## methods

  def divisible_by?(amount)
    num % amount == 0
  end

  def run
    if divisible_by?(7)
      result << "Super"
    end

    if divisible_by?(3)
      result << "Fizz"
    end

    if divisible_by?(5)
      result << "Buzz"
    end

    if result.empty?
      result << num.to_s
    end

    result
  end

  # The below takes our big, long run method from direclty above and transforms
  # each divisor into its own method, then recreates run at the bottom to
  # include each individual number method. This is based on Sandi Metz' principle that
  # methods should be as short as possible, in order to let us reuse them more
  # easily later in other applications, as well as make our code more flexible.
  # i.e. what if we want to ask if the number is divisible by 4, 16, 743? We
  # can now make divisible_by methods for each of those, then just add them to
  # run, and now we're there.

  def divisible_by?(amount)
    num % amount == 0
  end

  def divide_by_7
    if divisible_by?(7)
      result << "Super"
    end
  end

  def divide_by_3
    if divisible_by?(3)
      result << "Fizz"
    end
  end

  def divide_by_5
    if divisible_by?(5)
      result << "Buzz"
    end
  end

  def validate_result
    if result.empty?
      result << num.to_s
    end
  end

  def run
    divide_by_7
    divide_by_3
    divide_by_5
    validate_result
    result
  end

  # The below implements the previous configuration using guard clauses,
  # which are conditional statements without an else. This eliminates lines.

  def divisible_by?(amount)
    num % amount == 0
  end

  def divide_by_7
    result << "Super" if divisible_by?(7)
  end

  def divide_by_3
    result << "Fizz" if divisible_by?(3)
  end

  def divide_by_5
    result << "Buzz" if divisible_by?(5)
  end

  def validate_result
    if result.empty?
      result << num.to_s
    end
  end

  def run
    divide_by_7
    divide_by_3
    divide_by_5
    validate_result
    result
  end

end

p SuperFizz.new(315).run

# Finally, the below combines our 1-100 range from the original enumerable with our
# class-based configuration.

100.times do |num|
  p SuperFizz.new(num).run
end
