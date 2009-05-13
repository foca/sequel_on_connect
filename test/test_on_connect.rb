require "test/unit"
require "contest"

begin
  require "redgreen"
rescue LoadError
end

require "sequel"
require File.dirname(__FILE__) + "/../lib/sequel_on_connect"
require "ruby-debug"

class TestOnConnect < Test::Unit::TestCase
  test "connecting to a database runs the callback" do
    Sequel.on_connect { @value = 1 }
    Sequel.connect("sqlite::memory:")
    assert_equal 1, @value
  end

  test "the callbacks aren't run if you don't connect to a database" do
    Sequel.on_connect { @value = 1 }
    assert_nil @value
  end
end
