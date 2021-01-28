# frozen_string_literal: true

class Contact < ApplicationRecord
  validates_presence_of :first_name, :last_name, :email, :message
end
