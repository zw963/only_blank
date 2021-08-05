# frozen-string-literal: true
#
# The blank extension adds the blank? method to all objects (e.g. Object#blank?).
#
# To load the extension:
#
#   Sequel.extension :blank

[FalseClass, Object, NilClass, Numeric, String, TrueClass].each do |klass|
  # This self-aliasing is done to avoid warning messages in verbose warning mode
  # if an existing blank? method is already defined.
  # It's the officially recommended way of avoiding the warning messages.
  if klass.method_defined?(:blank?)
    klass.send(:alias_method, :blank?, :blank?)
  end
  # :nocov:
end

class FalseClass
  # false is always blank
  def blank?
    true
  end
end

class Object
  # Objects are blank if they respond true to empty?
  def blank?
    respond_to?(:empty?) && empty?
  end
end

class NilClass
  # nil is always blank
  def blank?
    true
  end
end

class Numeric
  # Numerics are never blank (not even 0)
  def blank?
    false
  end
end

class String
  # Strings are blank if they are empty or include only whitespace
  def blank?
    strip.empty?
  end
end

class TrueClass
  # true is never blank
  def blank?
    false
  end
end

[FalseClass, Object, NilClass, Numeric, String, TrueClass].each do |klass|
  # define present?, presence method
  klass.send(:define_method, :present?) { !blank? }
  klass.send(:define_method, :presence) { self if present? }
end
