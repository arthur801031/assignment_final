json.array!(@assignments) do |assignment|
  json.extract! assignment, :title, :description, :duedate
  json.url assignment_url(assignment, format: :json)
end