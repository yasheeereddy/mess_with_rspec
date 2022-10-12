require 'rails_helper'
RSpec.describe Category, type: :model do
  subject { Category.new( id:"1", category: "home list")}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a category" do
    subject.category=nil
    expect(subject).to_not be_valid
  end
end