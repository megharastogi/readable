json.array!(@children) do |child|
  json.extract! child, :id, :name, :user_id, :age, :grade
  json.url child_url(child, format: :json)
end
