require 'test_helper'

class GuardyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Guardy::VERSION
  end
end
