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
    refute_empty last_response.body
  end

  def test_is_return_404
    get('/v1/users', id: 1)
    assert_equal last_response.status, 404
  end
end
