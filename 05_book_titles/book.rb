class Book
# write your code here

attr_reader :title

def title=(my_string)

my_array=my_string.split(" ")

my_array[0].capitalize!

my_array.each { |x|
if x != "the" && x != "of" && x != "and" && x != "in" && x != "a" && x != "an"
x.capitalize!
end
}

@title=my_array.join(" ")
end

end
