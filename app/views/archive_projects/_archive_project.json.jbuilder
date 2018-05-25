json.extract! archive_project, :id, :user_id, :project_id, :description, :name, :reference, :file, :created_at, :updated_at
json.url archive_project_url(archive_project, format: :json)
