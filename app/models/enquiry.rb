class Enquiry < ActiveRecord::Base
  
  validates :contact_number, :date, :email, :location, :name, :service, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => 'Please provide a valid email address.'

  attr_accessible :contact_number, :date, :details, :email, :location, :name, :service
end
