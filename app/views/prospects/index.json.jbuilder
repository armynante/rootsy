json.array!(@prospects) do |prospect|
  json.extract! prospect, :id, :name, :first_name, :industry, :image_url, :linkedin_profile_url, :job_description, :location, :email, :user_id, :a
  json.url prospect_url(prospect, format: :json)
end
