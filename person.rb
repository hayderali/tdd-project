require 'date'
require 'yaml'

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
    "#{first_name}" << " #{surname}"
  end
  
  def add_email(input)
    @emails.push(input)
  end 

  def add_phone(input)
    @mobile_number.push(input)
  end
  
  def remove_phone(pos)
    mobile_number.delete_at(pos.to_i)
  end
  
  
   def remove_email(pos)
    emails.delete_at(pos.to_i)
  end
   
  def to_s
    "#{first_name} #{surname}" + " was born on" + " #{dob}" + " Their email addresses are:" + "#{emails.to_s}"+ " Their phone numbers are:" + mobile_number.to_s  
  end
  
  def print_details
  
    "#{first_name} #{surname}" + "-----------  Date of birth is " + "#{dob}" + " Email Addresses:" '-' << "#{emails.to_s} " +"Phone Numbers:" ' -' << "#{mobile_number.to_s}"  
    
  end
  
end

class FamilyMember < Person

	attr_accessor	:relationship
	  def initialize(fname,sname,dob)
			super
			@relationship = true
		end
	
end

class AddressBook 

  attr_reader :address_book
  def initialize
    @address_book = []
	end
  
  def add(person)
    address_book.push << person
  end 
  
  def list
      "Address Book\n-----------\n"   
		 @address_book.each.with_index(1){ |element , index| puts "Entry #{index}: " + element.fullname + "\n" }
  end
    
	 
	 
 
  #def load_yaml(filename)
    #data = YAML.load(File.open(filename))

  def yml
    file = YAML.load_file('./address_book.yml')
    file["people"].each do |yml_person|
      person = Person.new(yml_person["fname"], 
                          yml_person["surname"], 
                          yml_person["dob"])
      @address_book.push(person)
      yml_person["emails"].each { |e| person.add_email(e) }
      yml_person["phone"].each { |p| person.add_phone(p) }
    end
  end
  
    #load_data = YAML.load_file('address_book.yml')
    #puts load_data
     
  
end

