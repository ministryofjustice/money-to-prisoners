FactoryGirl.define do
  factory :payment do
    sequence(:sender_id) { |n| n }
    amount_in_pence 1000
    sequence(:source) { |n| "Source #{n}" }
    received_at { Time.now }
    sequence(:reference) { |n| "Reference #{n}" }
  end
end
