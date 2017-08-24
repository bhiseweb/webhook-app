class Webhook
  include Mongoid::Document
  field :meta, type: Hash
end
