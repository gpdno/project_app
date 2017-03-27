json.extract! task, :id, :action, :comment, :project_id, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)