class Authentication < ActiveRecord::Base
  belongs_to :user
  after_save :cache_data

  def not_valid?
    self.auth_token.nil? || self.expires_at > Time.now
  end

  def cache_data
    case self.provider
    when "facebook"

      cache_facebook_connections
    when "linkedin"
      cache_linkedin_connections
    else
      puts "provider not found"
    end
  end

  protected

  def cache_linkedin_connections
    LinkedinWorker.perform_async(self.id) 
  end

  def cache_facebook_connections
    FacebookWorker.perform_async(self.id)
  end


end
