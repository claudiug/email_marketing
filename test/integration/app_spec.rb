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
      assert last_response.ok?
    end
  end
end
