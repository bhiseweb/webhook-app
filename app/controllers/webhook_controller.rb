class WebhookController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def create
    data = JSON.parse(request.body.read)
    Webhook.create(meta: data)
    head :ok
  end
  
  def index
    @webhooks = Webhook.page(params[:page]).per(10)
  end
  
end
