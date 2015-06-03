json.array!(@payments) do |payment|
  json.extract! payment, :id, :sender_id, :amount_in_pence, :source, :received_at, :reference
  json.url payment_url(payment, format: :json)
end
