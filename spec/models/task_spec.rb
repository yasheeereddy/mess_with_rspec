require 'rails_helper'
RSpec.describe Task, type: :model do
  context "Validations" do
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
  context "Associations" do
    it { should belong_to(:user)}
    it { should belong_to(:category)}
  end
end

