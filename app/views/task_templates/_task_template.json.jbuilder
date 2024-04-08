json.extract! task_template, :id, :name, :frequency, :task_type_id, :singlable, :created_at, :updated_at
json.url task_template_url(task_template, format: :json)
