class EnquiryNotifier < ActionMailer::Base
  default from: "jianping.zhou.1986@gmail.com"
  def sent(enquiry)

    @enquiry = enquiry
    mail to: enquiry.email, subject: "New Cleaning Service Enquiry"
    #mail to: @enquiry.email
  end
end
