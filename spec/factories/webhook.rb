FactoryGirl.define do
  factory :webhook do
    meta {{
      "approval_key": "299698-24082017",
      "department_name": 'Dept1',
      "supplier_id": 315352,
      "supplier_name": "suplier1",
      "status": "approved",
      "creator_id": 16125,
      "currency_id": 3,
      "creator_name": "Test Creator",
      "amount": "11.0",
      "created_at": 1503561416,
      "total_gross_amount": "11.0",
      "base_gross_amount": "11.0",
      "delivery_status": "not_delivered",
      "archived": false,
      "conversion_rate": "1.0",
      "self_approved": true,
  }}
  end
end
