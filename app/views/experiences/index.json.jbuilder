json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :start_date, :end_date, :description
  json.url experience_url(experience, format: :json)
end
