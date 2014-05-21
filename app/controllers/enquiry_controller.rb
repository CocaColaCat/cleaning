class EnquiryController < ApplicationController

  def new
    @enquiry = Enquiry.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @enquiry = Enquiry.new(params[:enquiry])
    respond_to do |format|
      if @enquiry.save
        #EnquiryNotifier.sent(@enquiry).deliver	
	format.html { redirect_to '/enquiry/success' , notice: "enquiry was created successfully." }
      else
        session[:enquiry] = params[:enquiry]
	format.html { redirect_to :back }
      end 
    end
  end

  def success
  end
end
