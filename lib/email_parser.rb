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


def parse
if @email_string.include?(", ")
new_array = @email_string.split(", ")
elsif @email_string.include?(" ") && !@email_string.include?(", ")
new_array = @email_string.split(" ")
end

end
