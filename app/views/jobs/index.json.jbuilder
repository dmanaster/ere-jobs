json.array!(@jobs) do |job|
  json.extract! job, :id, :company_id, :user_id, :title, :description, :contact, :location
  json.url job_url(job, format: :json)
end
