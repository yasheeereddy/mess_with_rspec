require 'rails_helper'
RSpec.describe Task, type: :model do
  subject { Task.new(name:"yashee", status:"true")}
  it "is not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a status" do
    subject.status=nil
    expect(subject).to_not be_valid 
  end  
end 