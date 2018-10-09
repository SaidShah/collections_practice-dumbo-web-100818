require "pry"

int_array=[5,8,2,34,51,90,67,1,123,63]
string_array=["bird","catss","horses","app", "ok", "old"]

def sort_array_asc(given_array)
  given_array.sort
end
puts "\nsort array asc"
puts sort_array_asc(int_array)

def sort_array_desc(given_array)
  given_array.sort.reverse
end
puts "\nsort array desc"
puts sort_array_desc(int_array)

def sort_array_char_count(given_array)
  given_array.sort {|x,y| x.length<=>y.length}
end
puts "\nsort array char count "
puts sort_array_char_count(string_array)

def swap_elements(given_array)
  given_array[1], given_array[2] = given_array[2], given_array[1]
  given_array
end
puts "\nswap elements "
puts swap_elements(int_array)

def reverse_array(given_array)
  given_array.reverse
end
puts "\nreverse elements "
puts reverse_array(int_array)

def kesha_maker(given_array)
  new_array =[]
  given_array.each do |each_word|
   each_word[2] = "$"
   new_array<<each_word
   end
   new_array
end
puts "\nkesha maker "
puts kesha_maker(string_array)

def find_a(given_array)
  given_array.find_all do |each_word|
    each_word[0] == "a"
  end
end
puts "\nfind a "
puts find_a(string_array)

def sum_array(given_array)
  sum = 0
  given_array.each {|i| sum+=i}
  sum
end
puts "\nsum array "
puts sum_array(int_array)

def add_s(given_array)
  new_array = []
  given_array.each_with_index do |word,index|
    if index != 1
      new_array << word + "s"
      else
      new_array << word
    end
  end
  new_array
end
puts "\nadd s "
puts add_s(string_array)
