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
	format.html { redirect_to action: "new" , notice: "enquiry was created successfully." }
      end
    end
  end
end
