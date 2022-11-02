require "rails_helper"
RSpec.describe TasksController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :task => { :id => "1", :name => "Have lunch" ,:status => "true",:category_id => 3,:user_id => 11} }
      expect(response.media_type).to eq "text/html"
    end

    it "responds to custom formats when provided in the params" do
      post :create, :params => { :task => { :name => "Have dinner" ,:status => "true",:category_id => 3,:user_id => 11},:format => :json }
      expect(response.media_type).to eq "application/json" 
    end
  end
end