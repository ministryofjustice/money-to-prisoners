json.array!(@prisoners) do |prisoner|
  json.extract! prisoner, :id, :prisoner_name, :prisoner_number, :prisoner_dob
  json.url prisoner_url(prisoner, format: :json)
end
