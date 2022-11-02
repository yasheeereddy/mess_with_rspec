require 'rails_helper'
RSpec.describe Category, type: :model do
  subject { Category.new( id:"1", category: "home list")}
  context "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a category" do
      subject.category=nil
      expect(subject).to_not be_valid 
    end 
    it "is valid with a unique category name" do
      category1 = create(:category,:must_category)
      expect(category1).to be_valid  
    end
    it "is invalid with a repeated category name" do
      create(:category, category: "home list")
      category2 = build(:category, category: "home list") 
      expect(category2).to_not be_valid  
    end
  end
  context "Associations" do
    it { should have_many(:tasks) }
  end
end
