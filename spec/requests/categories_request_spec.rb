# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /index' do
    before { create(:product) }
    it 'renders a successful response' do
      get categories_path
      expect(response).to be_successful
    end
    it 'render index template' do
      get products_path
      should render_template('index')
    end
  end
end
