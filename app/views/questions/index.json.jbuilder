json.array!(@questions) do |question|
  json.extract! question, :id, :book_id, :content, :ans1, :ans2, :ans3, :ans4
  json.url question_url(question, format: :json)
end
