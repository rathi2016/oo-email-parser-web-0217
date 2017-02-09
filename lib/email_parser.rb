# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :email,:arr_emails,:result

  def initialize(email)
    @email = email
    @result = [ ]

  end

   def parse

     @arr_emails = @email.split
     @arr_emails.each do |ele|
       @result << ele.delete(", ")
     end
         @result.uniq

   end
end
