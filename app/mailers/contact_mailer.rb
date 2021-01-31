# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def contact_email(contact)             #send contact email to the admin
    @contact = contact
    mail(to: 'info@ajackus.com', subject: 'You got a new mail!')
  end
end
