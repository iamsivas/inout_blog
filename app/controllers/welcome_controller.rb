class WelcomeController < ApplicationController
  layout 'application'

  def index
  end

  def newcontact
    contact = Contact.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      message: params[:message],
      contact_date: Date.today
    )
    if contact.save
      flash[:success] = 'Email sent successfully'
      redirect_to '/contact'
    end
  end

  def career
  	@careers = Career.all
  end

  def get_career
    @jobs = Career.all
    @job = Career.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def applycareer
  	newpost = CareerApplied.new(
      name: params[:name],
      email: params[:email],
      phone_no: params[:phone_no],
      resume_link: params[:resume_link],
      applied_for: params[:id],
      applied_date: Date.today
    )
    if newpost.save
      flash[:success] = 'Your application has been sent successfully'
      redirect_to '/career'
    end
  end
end
