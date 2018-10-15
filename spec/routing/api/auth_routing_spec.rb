require 'rails_helper'

RSpec.describe Api::AuthController, type: :routing do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/api/auth').to route_to('api/auth#create')
    end
  end
end
