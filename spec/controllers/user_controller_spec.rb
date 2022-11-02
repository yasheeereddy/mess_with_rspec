require "rails_helper"
RSpec.describe UsersController, type: :controller do 
    it "returns a 200" do
        get :index
        expect(response).to have_http_status(:ok)
    end   
    it "assigns all users to @users" do
        get :index
        expect(assigns(:users)).to eq(User.all)
    end   
    it "renders the index template" do
        get :index
        expect(response).to render_template("index")
    end
end