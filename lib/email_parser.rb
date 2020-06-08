# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
attr_accessor :email_string

def initialize(email_string)
@email_string = email_string
end

def parse_array(array)
  new_array = []
  array.each do |string|
  if string.include?(" ")
    split_array = string.split(" ")
    split_array.each do |value|
      new_array << value
    end
  else
    new_array << string
  end
  end
  return new_array
end



def parse
if @email_string.include?(", ")
new_array = @email_string.split(", ")
final_array = parse_array(new_array)
final_array
elsif @email_string.include?(" ")
new_array = @email_string.split(" ")
final_array = parse_array(new_array)
final_array
end
end
end
