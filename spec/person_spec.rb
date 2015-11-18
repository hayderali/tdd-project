require 'spec_helper'

#let keyword helps abstract code 

describe "Person Class - entries in phonebook" do
  it "should store and return personal information" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    
    expect(person.dob.class).to be Date
    expect(person.dob.to_s).to eq "1990-01-01"
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end    
end
  
describe "Person Class - entries in phonebook" do
  it "check email array is working" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    expect(person.emails).to eq []
  end 
end

describe "Person Class - entries in phonebook" do
  it "view first 2 emails" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_email("joe@foo.com")
    person.add_email("joe.bloggs@work.com")
    expect(person.emails).to eq ["joe@foo.com","joe.bloggs@work.com"]   
  end 
end

describe "Person Class - entries in phonebook" do
  it "check mobile array is working" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    expect(person.mobile_number).to eq []
  end 
end

describe "Person Class - entries in phonebook" do
  it "view first 2 mobile numbers" do
    person = Person.new("joe","bloggs","1 Jan 1990")
    person.add_phone("07712345678")
    person.add_phone("02012345678")
    expect(person.mobile_number).to eq ["07712345678","02012345678"]   
  end 
end