json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :value, :deposit
  json.url transaction_url(transaction, format: :json)
end
