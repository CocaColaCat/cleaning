class PageController < ApplicationController
  def home
    if session[:enquiry]
      @enquiry = Enquiry.new(session[:enquiry])
      session[:enquiry] = nil
      @enquiry.valid?
    else
      @enquiry = Enquiry.new
    end

  end

  def about
  end

  def services
  end

  def contact
  end

  def enquiry

  end

end
