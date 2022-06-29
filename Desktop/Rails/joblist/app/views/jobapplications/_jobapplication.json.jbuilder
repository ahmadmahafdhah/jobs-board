json.extract! jobapplication, :id, :title, :status, :created_at, :updated_at
json.url jobapplication_url(jobapplication, format: :json)
