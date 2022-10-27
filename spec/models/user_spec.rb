require 'rails_helper'
RSpec.describe User, type: :model do
  context "Validations" do
    before(:all) do
      @user1 = create(:user)
    end
    
    it "is valid with valid attributes" do
      expect(@user1).to be_valid
    end
    
    it "is not valid without a password" do 
      user2 = build(:user, password: nil)
      expect(user2).to_not be_valid
    end
    
    it "is not valid without a username" do 
      user2 = build(:user, username: nil)
      expect(user2).to_not be_valid
    end
    it "should be a valid email address" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        user2 = build(:user, email: "rant@gmail.com")
        user2.email = valid_address
        expect(user2).to be_valid
      end
    end
    
    it "is not valid without an email" do
      user2 = build(:user, email: nil)
      expect(user2).to_not be_valid
    end

  end

  context "Association" do
    it { should have_many(:tasks) }
  end
end

