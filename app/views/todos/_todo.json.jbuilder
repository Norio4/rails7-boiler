json.extract! todo, :id, :title, :body, :completed, :deadlined_at, :created_at, :updated_at
json.url todo_url(todo, format: :json)
