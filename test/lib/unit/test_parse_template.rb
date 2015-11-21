require 'minitest/autorun'
require File.expand_path '../../../test_helper.rb', __FILE__
require_relative '../../../lib/parse_template'

class TestParseTemplate < Minitest::Test

  def test_init_with_proper_object
    template = "Hello {name} this is your valid email {email}?"
    keys = {name: "claudiu", "email": "some@gmail.com"}
    parse_template = ParseTemplate.new(template, keys)
    result = parse_template.parse
    assert_equal(result, "Hello claudiu this is your valid email some@gmail.com?")
  end
end
