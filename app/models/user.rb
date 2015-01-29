class User < ActiveRecord::Base
  has_many :authentications
  has_many :prospects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  linkedin_base_uri = "https://api.linkedin.com/v1"
  

  # Josh: FgqBiy0TG4  

  def supplement_user(auth_payload)
      self.first_name = auth_payload.info.first_name unless self.first_name
      self.last_name = auth_payload.info.last_name unless self.last_name
      self.location = auth_payload.info.location.name unless self.location 
      self.secondary_email = auth_payload.info.email unless self.email ==  auth_payload.info.email
      self.image_url = auth_payload.info.image unless self.image_url 
    if auth_payload.provider == "facebook"
      self.industry = auth_payload.extra.raw_info.industry
      self.linkedin_profile_url = auth_payload.extra.raw_info.publicProfileUrl
      self.job_description = auth_payload.info.description
    end
    begin 
      self.save!
      #self.geocode
    rescue => e
      Rails.logger.error { "Error saving supplement_user data, #{e.message} #{e.backtrace.join("\n")}" }
    end
  end
  

  def send_linkedin_message(recipient_id, subject, body)
    #pull auth
    mesg = {  :recipients => { 
                :values => [{ :person => { :_path => '/people/~'} },
                            { :person => { :_path => '/people/' + recipient_id } }]
              },
              :subject => subject,
              :body => body
            }.to_json

    HTTParty.post(linkedin_base_uri + "/people/~/mailbox", 
                  :headers=>  { "Authorization" => "Bearer #{token}", 
                               'Content-Type' => 'application/json' 
                              }, :body => json )
  end
 
end
