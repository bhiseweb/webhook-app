require 'rails_helper'

RSpec.describe WebhookController, type: :controller do
  
  describe "GET #index" do
  
    before :each do
      3.times { |i| FactoryGirl.create(:webhook) }
    end 
    
    it "return all webhooks" do
      get :index
      expect(assigns(:webhooks).count).to eq 3
    end
    
    it "return success response" do
      get :index
      expect(response).to be_success
    end
    
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  
  describe "POST #create", type: :request do
  
    let(:webhook) { FactoryGirl.build(:webhook) }
        
    it "return success response" do
      post '/webhook', params: webhook.meta.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
      expect(response).to be_success
    end

    it "create a record" do
      webhook.meta['approval_key'] = "299698-2401243"
      expect(Webhook.count).to eq 0
      post '/webhook', params: webhook.meta.to_json, headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
      expect(Webhook.last.meta["approval_key"]).to eq "299698-2401243"
      expect(Webhook.count).to eq 1
    end  
  end
  
end
