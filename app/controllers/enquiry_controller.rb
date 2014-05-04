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
	format.html { redirect_to '/page/home' , notice: "enquiry was created successfully." }
      else
        session[:enquiry] = params[:enquiry]
	format.html { redirect_to :back, :notice => "something went wrong.try again" }
      end
    
    end
  end
end
