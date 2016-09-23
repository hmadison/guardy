require 'test_helper'

class GuardTest < Minitest::Test
  include Guardy

  def test_block_called_when_a_guard_fails
    was_called = false
    Guard.call(false, true) { was_called = true }
    assert was_called, 'Block should have been called'
  end

  def test_block_not_called_when_a_guard_passes
    was_called = false
    Guard.call(true, true) { was_called = true }
    refute was_called, 'Block should have been called'
  end
end
