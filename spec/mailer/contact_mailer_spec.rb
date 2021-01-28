# frozen_string_literal: true

require 'rails_helper'

describe ContactMailer do
  let(:first_name) { 'sbi' }
  let(:last_name) { '123456' }
  let(:email) { '1234-5678-9012-3456' }
  let(:message) { 'saddam' }
  let(:contact) do
    Contact.new(first_name: first_name,
                last_name: last_name,
                email: email,
                message: message)
  end
  let(:mail) { ContactMailer.contact_email(contact) }

  it 'renders the subject' do
    expect(mail.subject).to eql('You got a new mail!')
  end

  it 'renders the receiver email' do
    expect(mail.to).to eql(['info@ajackus.com'])
  end

  it 'renders the sender email' do
    expect(mail.from).to eql(['from@example.com'])
  end
end
