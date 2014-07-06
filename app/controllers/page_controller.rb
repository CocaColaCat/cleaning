class PageController < ApplicationController
  def home
    get_enquiry
  end

  def about
    get_enquiry
  end

  def services
    get_enquiry
  end

  def contact
  end

  def enquiry

  end

  private
  def get_enquiry
    if session[:enquiry]
      @enquiry = Enquiry.new(session[:enquiry])
      session[:enquiry] = nil
      @enquiry.valid?
    else
      @enquiry = Enquiry.new
    end
  end
end
