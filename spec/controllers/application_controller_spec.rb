# frozen_string_literal: true

require 'rails_helper'

describe ApplicationController do
  controller do
    def render404
      not_found
    end
  end

  describe '#render_error_response' do
    before do
      routes.draw { get 'render404' => 'anonymous#render404' }
    end

    it 'returns 404' do
      get :render404
      expect(response).to have_http_status(404)
    end
  end
end
