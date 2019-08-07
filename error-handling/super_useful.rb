# PHASE 2
def convert_to_int(str)
  begin 
    Integer(str)
  rescue ArgumentError
    puts "Cannot convert to integer. Please input a valid numberical string."
    retry
  end
  
end


# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError
    puts "Thank you for the coffee, but I want a fruit."
    retry 
  rescue StandardError 
    puts "Not a fruit!"
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise NameLengthError if name.length < 1
    @name = name
    raise YearsKnownError if yrs_known < 5
    @yrs_known = yrs_known
    raise PastLengthError if fav_pastime.length < 1
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

 class CoffeeError < StandardError
 end

 class YearsKnownError < StandardError 
 end


  class NameLengthError < StandardError 
 end

  class PastLengthError < StandardError 
 end