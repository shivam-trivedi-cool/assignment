class ContactMailer < ApplicationMailer
	def contact_email(contact)
		@contact = contact
    mail(to: 'info@ajackus.com', subject: "You got a new mail!")
  end
end
