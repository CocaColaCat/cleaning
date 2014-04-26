require 'test_helper'

class EnquiryNotifierTest < ActionMailer::TestCase
  test "sent" do
    mail = EnquiryNotifier.sent(enquiries(:one))
    assert_equal "New Cleaning Service Enquiry", mail.subject
    assert_equal ["MyString"], mail.to
    assert_equal ["jianping.zhou.1986@gmail.com"], mail.from
    assert_match  /You have a new/, mail.body.encoded
  end
end
