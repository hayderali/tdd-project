require 'date'

class Person
  attr_accessor :dob, :first_name, :surname, :fullname  
  def initialize(fname,sname,dob)
    @dob = Date.parse(dob)
    @first_name =fname.capitalize
    @surname = sname.capitalize
  end

  def fullname
    "#{first_name} #{surname}"
  end
end