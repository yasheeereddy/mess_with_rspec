require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new(username: "yashee", email: "yashee@email.com", password: "####")}
  context "Association" do
    it { should have_many(:tasks) }
  end
  context "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a username" do
      subject.username=nil
      expect(subject).to_not be_valid
    end
    it "is not valid without an email" do
      subject.email=nil
      expect(subject).to_not be_valid
    end
    it "should have a valid email" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        subject.email = valid_address
        expect(subject).to be_valid
      end
    end
    it "is invalid with a duplicate email" do
      user1 = build(:user, email:"yash12@gmail.com")
      expect(user1).to be_valid
    end
    it "is valid with a unique username" do
      user2 = build(:user, :admin, email: "yashee@gmail.com")
      expect(user2).to be_valid
    end
  end
end

