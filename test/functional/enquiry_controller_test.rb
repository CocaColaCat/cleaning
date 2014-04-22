require 'test_helper'

class EnquiryControllerTest < ActionController::TestCase
  setup do
    @enquiry = enquiries(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create new enquiry" do
    assert_difference('Enquiry.count') do
      post :create, enquiry: {name: @enquiry.name, contact_number: @enquiry.contact_number,  email: @enquiry.email, location: @enquiry.location, 
      service: @enquiry.service, date: @enquiry.date, details: @enquiry.details}
    end
  end

end
