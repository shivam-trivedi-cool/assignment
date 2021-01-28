# frozen_string_literal: true

require 'rails_helper'

describe Contact do
  let(:first_name) { 'sbi' }
  let(:last_name) { '123456' }
  let(:email) { '1234-5678-9012-3456' }
  let(:message) { 'saddam' }
  let(:contact) do
    described_class.new(first_name: first_name,
                        last_name: last_name,
                        email: email,
                        message: message)
  end

  describe 'validate' do
    subject { contact.valid? }

    context 'with empty first_name' do
      let(:first_name) { nil }

      it { is_expected.to eq false }
    end

    context 'with empty last_name' do
      let(:last_name) { nil }

      it { is_expected.to eq false }
    end

    context 'with empty email' do
      let(:email) { nil }

      it { is_expected.to eq false }
    end

    context 'with empty message' do
      let(:message) { nil }

      it { is_expected.to eq false }
    end
  end
end
