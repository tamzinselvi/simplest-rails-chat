json.array!(@messages) do |message|
  json.content message.content
  json.created_at message.created_at
end
