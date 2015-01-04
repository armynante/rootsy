class User < ActiveRecord::Base

  # notice this comes BEFORE the include statement below
  # also notice that :confirmable is not included in this block
  
  # can't figure out how to tuen off the comfirmation with the gem directly
  # Need to write a method that sets the host to email on client side and check
  # checks on server
  
  before_save -> { skip_confirmation! }



  # note that this include statement comes AFTER the devise block above
  include DeviseTokenAuth::Concerns::User
end