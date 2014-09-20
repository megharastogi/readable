json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :description, :ri, :grade
  json.url book_url(book, format: :json)
end
