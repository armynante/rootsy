class LinkedinWorker
  include Sidekiq::Worker
  sidekiq_options :retry => 5 

  def perform(auth_id)
    auth = Authentication.find(auth_id)
    if auth   
      token = auth.auth_token
      resp = HTTParty.get("https://api.linkedin.com/v1/people/~/connections?modified=new", 
                    :headers=>  { "Authorization" => "Bearer #{token}" })
      resp["connections"]["person"].each do |connection|
        begin 
        pros = Prospect.new
        pros.first_name = connection["first_name"]
        pros.last_name = connection["last_name"]
        pros.linkedin_image_url = connection["picture_url"]
        pros.job_description = connection["headline"]
        pros.linkedin_id = connection["id"]
        pros.location = connection["location"]["name"]
        pros.linkedin_profile_url = connection["api_standard_profile_request"]["url"]
        pros.industry = connection["industry"]
        pros.provider = "linkedin"
        p pros
        pros.save
        p "SAVED"
        rescue => e
          Rails.logger.error { "Error saving prospect data, #{e.message} #{e.backtrace.join("\n")}" }
        end
      end
    end
  end
end