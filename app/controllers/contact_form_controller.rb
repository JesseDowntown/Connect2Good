class ContactFormController < ApplicationController

  def new
    @contact_form = ContactForm.new 
  end

  def create 
    @contact_form = ContactForm.new(params[:contact_form]) 
    @contact_form.request = request 
    if @contact_form.deliver 
      # redirect_to
    else 
      render :new 
    end 
  end 
end