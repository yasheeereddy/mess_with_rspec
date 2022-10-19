require "rails_helper"
RSpec.describe UsersController, type: :request do
   
    it "assigns all users to @users" do
        get users_path
        expect(assigns(:users)).to eq(User.all)
    end   
end