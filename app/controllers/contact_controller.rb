# frozen_string_literal: true

class ContactController < ApplicationController
  def index                 #root page of the application
    @contact = Contact.new
  end

  def create                #save record in db and send an email to the admin
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_now!
        format.html { redirect_to root_path, notice: 'Mail sent successfully!' }
        format.json { render :index, status: :created }
      else
        format.html { render :index }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name,
                                    :last_name,
                                    :email,
                                    :phone_number,
                                    :message)
  end
end
