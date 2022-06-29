json.extract! jobslist, :id, :title, :description, :created_at, :updated_at
json.url jobslist_url(jobslist, format: :json)
