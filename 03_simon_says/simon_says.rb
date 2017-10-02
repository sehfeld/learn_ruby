#write your code here

def echo(x)

x

end


def shout(x)

x.upcase

end

def repeat(x,num=2)

my_string= "#{x}"

for i in 2..num

my_string << " #{x}"

end

my_string

end


def start_of_word(my_word,x=0)

my_word[0..(x-1)]

end

def first_word(my_word)

my_array=my_word.split(" ")
my_array[0]

end

def titleize(my_string)

my_array=my_string.split(" ")

my_array[0].capitalize!

my_array.each { |x|
if x != "the" && x != "over" && x != "and"
x.capitalize!
end
}

my_array.join(" ")


end




