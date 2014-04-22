class Enquiry < ActiveRecord::Base
  attr_accessible :contact_number, :date, :details, :email, :location, :name, :service
end
