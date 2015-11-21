require 'minitest/autorun'
require File.expand_path '../../test_helper.rb', __FILE__


class TestApp < Minitest::Test

  include Rack::Test::Methods

  def app
    App
  end

  def test_is_returning_all_users_in_index
    get('/v1/')
    assert last_response.ok?
  end
end
