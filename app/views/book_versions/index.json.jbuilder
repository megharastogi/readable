json.array!(@book_versions) do |book_version|
  json.extract! book_version, :id, :book_id, :grade, :content, :ri
  json.url book_version_url(book_version, format: :json)
end
