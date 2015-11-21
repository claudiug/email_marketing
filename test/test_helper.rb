ENV["RAILS_ENV"] ||= "test"


# Improved Minitest output (color and progress bar)
require "minitest/reporters"
require 'webmock/minitest'
require 'rack/test'
require File.expand_path '../../app.rb', __FILE__


Minitest::Reporters.use!(
    Minitest::Reporters::ProgressReporter.new,
    ENV,
    Minitest.backtrace_filter)
