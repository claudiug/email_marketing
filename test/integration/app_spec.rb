require 'minitest/autorun'
require File.expand_path '../../test_helper.rb', __FILE__


describe App do
  include Rack::Test::Methods

  def app
    App
  end

  describe '/v1/' do
    it 'return all users' do
      get('/v1/')
      puts last_response.status
      expect(last_response.status).must_equal 200
    end

    it 'return status 404 for no user' do
      get('/v1/users', id: 1)

    end
  end
end
