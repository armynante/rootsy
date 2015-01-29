class AuthenticationsController <  ApplicationController

  def create_auth
    debugger
    auth = Authentication.where(user_id: current_user, provider: params['provider']).first_or_initialize
    if auth.not_valid?  # check to see if auth exists and is valid
      auth_payload = request.env["omniauth.auth"]
      debugger
      auth.user = current_user
      auth.auth_token = auth_payload.credentials.token
      auth.provider = auth_payload.provider
      auth.uid = auth_payload.uid
      current_user.supplement_user(auth_payload)
      auth.expires_at = Time.at(auth_payload.credentials.expires_at)
      if auth.save
        p auth
        redirect_to '/', notice: 'Thanks for adding '+ auth_payload.provider + ' !' and return
      else
        redirect_to '/', alert: 'Failed to add '+ auth_payload.provider + ' authentication :(' and return
      end
    end
      redirect_to '/', notice: 'Looks like you already authenticated with '+ auth_payload.provider + '!'
  end


end 