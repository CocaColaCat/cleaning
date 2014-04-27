
module EnquiryHelper
  def error_message_for(field)
    error_message = @enquiry.errors[field][0]
    if(error_message)
      raw "<span class=\"help-inline\">#{error_message}</span>"
    end
  end
end
