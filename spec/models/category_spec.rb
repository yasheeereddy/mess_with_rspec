require 'rails_helper'
RSpec.describe Category, type: :model do
  subject { Category.new( id:"1", category: "home list")}
  context "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is valid with a unique category name" do
      category1 = create(:category)
      expect(category1).to be_valid  
    end
    it "is invalid with a common category name" do
      category2 = create(:category, category: "grocery list") 
      expect(category2).to be_valid  
    end
  end
  context "Associations" do
    it { should have_many(:tasks) }
  end
end
