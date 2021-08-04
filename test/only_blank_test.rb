require 'only_blank'

class OnlyBlankTest < Minitest::Test
  def test_false
    assert_equal true, false.blank?
    assert_equal false, false.present?
  end

  def test_true
    assert_equal false, true.blank?
    assert_equal true, true.present?
  end

  def test_object
    o = Object.new
    def o.empty?
      true
    end
    assert_equal true, o.blank?
    assert_equal false, o.present?
    def o.empty?
      false
    end
    assert_equal false, o.blank?
    assert_equal true, o.present?
  end

  def test_nil
    assert_equal true, nil.blank?
    assert_equal false, nil.present?
  end

  def test_numeric
    assert_equal false, 100.blank?
    assert_equal true, 100.present?
  end

  def test_string
    assert_equal false, "hello".blank?
    assert_equal true, "hello".present?
    assert_equal true, "

    ".blank?
    assert_equal false, "

    ".present?
  end

  def test_use_fast_blank?
    if RUBY_ENGINE == 'ruby'
      assert_nil "hello".method(:blank?).source_location
    end
  end
end
