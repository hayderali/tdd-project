require 'spec_helper'

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

