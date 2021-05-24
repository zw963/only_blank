require 'only_blank'

class OnlyBlankTest < Minitest::Test
  def test_false
    assert_equal true, false.blank?
  end

  def test_true
    assert_equal false, true.blank?
  end

  def test_object
    o = Object.new
    def o.empty?
      true
    end
    assert_equal true, o.blank?
    def o.empty?
      false
    end
    assert_equal false, o.blank?
  end

  def test_nil
    assert_equal true, nil.blank?
  end

  def test_numeric
    assert_equal false, 100.blank?
  end

  def test_string
    assert_equal false, "hello".blank?
    assert_equal true, "

    ".blank?
  end

  def test_use_fast_blank?
    assert_nil "hello".method(:blank?).source_location
  end
end
