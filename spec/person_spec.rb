require 'spec_helper'

#let keyword helps abstract code 

describe "Person Class - Checking constructor" do
  it "should store and return personal information" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    
    expect(person.dob.class).to be Date
    expect(person.dob.to_s).to eq "1990-01-01"
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end    
end
  
describe "Person Class - Email entries in phonebook" do
  it "check email array is working" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    expect(person.emails).to eq []
  end 
  
  it "view first 2 emails" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_email("joe@foo.com")
    person.add_email("joe.bloggs@work.com")
    expect(person.emails).to eq ["joe@foo.com","joe.bloggs@work.com"]   
  end 
  
  it "to see if [1] -> [0] after remove" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_email("joe@foo.com")
    person.add_email("joe.bloggs@work.com")
    person.remove_email(0)
    expect(person.emails).to eq ["joe.bloggs@work.com"]
  end 
end


describe "Person Class - Mobile entries in phonebook" do
  it "check mobile array is working" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    expect(person.mobile_number).to eq []
  end 
  
  it "view first 2 mobile numbers" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_phone("07712345678")
    person.add_phone("02012345678")
    expect(person.mobile_number).to eq ["07712345678","02012345678"]   
  end 
end

describe "Person Class - Override to_s" do 
  it "print out name,dob,email and mobile" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_email("joe@foo.com")
    person.add_phone("07712345678")
    expect(person.to_s).to eq "Joe Bloggs was born on 1990-01-01 Their email addresses are:[\"joe@foo.com\"] Their phone numbers are:[\"07712345678\"]"
  end
  
end

describe "Person Class - Printing Details" do 
  it "displaying information presentably" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_email("joe@foo.com")
    person.add_phone("07712345678")
    expect(person.print_details).to eq "Joe Bloggs-----------  Your date of birth is 1990-01-01"
  end
  
  
end

