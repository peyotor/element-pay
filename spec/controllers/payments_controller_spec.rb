require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #result" do
    it "returns http success" do
      get :result
      expect(response).to have_http_status(:success)
    end
  end

end
