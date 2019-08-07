require_relative 'super_useful'

# puts "'five' == #{convert_to_int('five')}"

# feed_me_a_fruit
begin 
sam = BestFriend.new('sam', 5, 'baaaaaalin')
rescue YearsKnownError
    puts "You must be friends for 5 years, to be 'best friends!'"
rescue NameLengthError
    puts "You must give your 'real friend' a name"
rescue PastLengthError
    puts "Must give a favorite pastime"
end
# sam.talk_about_friendship
# sam.do_friendstuff
# sam.give_friendship_bracelet
