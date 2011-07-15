require "test/unit"
require "vlad/status"

class TestVladPush < Test::Unit::TestCase
  def test_sanity
    assert system("rake -T vlad")
    assert system("rake -T vald | grep status")
  end
end
