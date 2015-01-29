Rails.application.config.middleware.use OmniAuth::Builder do
  provider :linkedin, ENV['LINKEDIN_CONSUMER'], ENV['LINKEDIN_SECRET'], 
           :scope => 'r_fullprofile r_emailaddress r_network w_messages rw_groups r_contactinfo rw_nus'
  provider :facebook, ENV['FACEBOOK_CONSUMER'], ENV['FACEBOOK_SECRET'],
           :image_size => 'large', :scope => "public_profile, user_friends, email"
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
    # {
    #   :prompt => "select_account",
    #   :image_aspect_ratio => "square",
    #   :image_size => 50
    # }
end