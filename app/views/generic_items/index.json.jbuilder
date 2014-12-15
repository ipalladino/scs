json.array!(@generic_items) do |generic_item|
  json.extract! generic_item, :id, :title, :description, :graphic, :button_link, :button_text, :component
  json.url generic_item_url(generic_item, format: :json)
end
