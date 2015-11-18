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
  
   def remove_email(pos)
    emails.delete_at(pos.to_i)
  end
  
  def to_s
    "#{first_name} #{surname}" + " was born on" + " #{dob}" + " Their email addresses are:" + "#{emails.to_s}"+ " Their phone numbers are:" + mobile_number.to_s  
  end
  
  def print_details
  
    "#{first_name} #{surname}" + "-----------  Your date of birth is " + "#{dob}"  
     # ""
     # " Email Addresses:"
     # '- ' << emails.to_s
     # ""
     # " Phone Numbers:"
     # '- ' << mobile_number.to_s
    
  end
  
end

