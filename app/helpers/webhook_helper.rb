module WebhookHelper
  
  def header
    ['Date', 'Budget', 'Supplier Name', 'Status', 'Creator Name', 'Gross Amount', 'PO Number' ]
  end
  
  def to_obj meta
    JSON.parse(meta.to_json, object_class: OpenStruct)
  end
  
end

