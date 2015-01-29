class FacebookWorker
  include Sidekiq::Worker

  sidekiq_options :retry => 5
  def perform(auth_id)
    authentication = Authentication.find(auth_id)
    if authentication
      token = authentication.auth_token
      user = User.find(authentication.user_id)
      resp = HTTParty.get("https://graph.facebook.com/v2.2/me/photos", :headers=>  { "Authorization" => "Bearer #{token}" })
      debugger
      resp['friends']['data'].each do |connection|  
        begin
        pros = Prospect.new
        pros.user = current_user
        pros.first_name = connection["first_name"]
        pros.last_name = connection["last_name"]
        pros.fb_image_url = connection["picture_url"]
        pros.job_description = connection["work"][0]["position"][0]["name"] + 
                               " at " + connection["work"][0]["employer"][0]["name"]
        pros.fb_id = connection["id"]
        pros.location = connection["location"]["name"]
        pros.fb_profile_url = connection["link"]
        pros.provider = "facebook"
        pros.save
        rescue => e
          Rails.logger.error { "Error saving prospect data, #{e.message} #{e.backtrace.join("\n")}" }
        end
      end

    end
  end
end