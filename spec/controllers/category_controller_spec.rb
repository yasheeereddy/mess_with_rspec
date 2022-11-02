require "rails_helper"
RSpec.describe CategoriesController, type: :controller do
    describe "get index" do
        it "returns a 200" do
            get :index
            expect(response).to have_http_status(:ok)
        end   
        it "assigns all categories to @users" do
            get :index
            expect(assigns(:categories)).to eq(Category.all)
        end   
        it "renders the index template" do
            get :index
            expect(response).to render_template("index")
        end
    end
end