require 'date'

class Person
  attr_accessor :dob, :first_name, :surname, :fullname  
  attr_reader :mobile_number, :emails
  def initialize(fname,sname,dob)
    @dob = Date.parse(dob)
    @first_name =fname.capitalize
    @surname = sname.capitalize
    @emails = []
    @mobile_number = []
  end

  def fullname
    "#{first_name} #{surname}"
  end
  
  def add_email(input)
    @emails.push(input)
  end 

  def add_phone(input)
    @mobile_number.push(input)
  end
  
end

