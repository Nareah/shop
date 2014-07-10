json.array!(@categories) do |category|
  json.extract! category, :id, :title, :description, :image_url
  json.url category_url(category, format: :json)
end
