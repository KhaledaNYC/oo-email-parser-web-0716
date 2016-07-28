# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  def parse

    new_email = emails.split(/[\s,']/)
    new_email.delete_if {|x| x.size == 0}
    new_arr = []
    new_email.each do |email|
      if new_arr.include?(email) == false
        new_arr << email
      end
      end
      new_arr
  end
end
