json.array!(@reviews) do |review|
  json.extract! review, :id, :child_id, :question_id, :ans
  json.url review_url(review, format: :json)
end
