# frozen_string_literal: true

require 'rails_helper'

describe ContactController do
  let(:contact) { instance_double('contact') }
  let(:save_result) { true }
  let(:params) do
    {
      contact: {
        first_name: 'Shivam',
        last_name: 'Trivedi',
        email: 'shivam.trivedi0078@gmail.com',
        phone_number: '9999999999',
        message: 'this is a test'
      }
    }
  end

  before do
    allow(Contact).to receive(:new).and_return(contact)
    allow(contact).to receive(:save).and_return(save_result)
    allow(ContactMailer).to receive(:contact_email).and_return(contact)
    allow(contact).to receive(:deliver_now!).and_return(true)
  end

  describe 'GET index' do
    subject { get :index }

    context 'when success' do
      it { is_expected.to have_http_status(:ok) }
    end
  end

  describe 'POST create' do
    subject { post :create, params: params }

    context 'when success' do
      it { is_expected.to have_http_status(302) }
    end

    context 'when failed' do
      let(:save_result) { false }

      it { is_expected.to have_http_status(:ok) }
    end
  end
end
