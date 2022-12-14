require 'rails_helper'
RSpec.describe Task, type: :model do
  context "Validations" do
    subject { Task.new(name:"eat food", status:"true")}
    it "is not valid without a name" do
      subject.name= nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a status" do
      subject.status=nil
      expect(subject).to_not be_valid 
    end  
    it "is valid with a unique name" do
      task1 = build(:task,:not_completed,name: "eat food")
      expect(task1).to be_valid  
    end  
    it "is valid with a unique user" do
      task2 = build(:task, :completed)
      expect(task2).to be_valid  
    end
  end 
  context "Associations" do
    it { should belong_to(:user)}
  end
end