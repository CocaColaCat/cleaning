class Enquiry < ActiveRecord::Base
  
  SERVICES = ['Carpet Cleaning', 'Office Cleaning', 'Domestic Cleaning', 'End of Tenacy']
  validates :details, :contact_number, :date, :location, :name, :service, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => 'Please provide a valid email address.', :if => :email_provided?

  attr_accessible :contact_number, :date, :details, :email, :location, :name, :service

  def email_provided?
      self.email != ''    
  end

end
