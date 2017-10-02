#write your code here


def vowel_check(word,num)

if word[num]=="a" || word[num]=="e" || word[num]=="i" || word[num]=="o" || word[num]=="u"
return true
else 
return false
end
end

def translate(my_string)

my_array=my_string.split(" ")

my_array.map! { |x|

if vowel_check(x,0)==true
x << "ay"
elsif vowel_check(x,0)==false && vowel_check(x,1)==false && vowel_check(x,2)==false
x = "#{x[3..(x.length-1)]}#{x[0..2]}ay"
elsif vowel_check(x,0)==false && x[1]=="q" && x[2]=="u"
x = "#{x[3..(x.length-1)]}#{x[0..2]}ay"
elsif vowel_check(x,0)==false && vowel_check(x,1)==false
x = "#{x[2..(x.length-1)]}#{x[0..1]}ay"
elsif x[0]=="q" && x[1]=="u"
x = "#{x[2..(x.length-1)]}#{x[0..1]}ay"
elsif vowel_check(x,0)==false && x[1]=="q" && x[2]=="u"
x = "yo"
else
x = "#{x[1..(x.length-1)]}#{x[0]}ay"
end

}

my_array.join(" ")
end



