json.extract! task, :id, :task_template_id, :priority, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
