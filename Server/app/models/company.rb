class Company < ActiveRecord::Base
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  belongs_to :user
  alias_attribute :owner, :user
end
