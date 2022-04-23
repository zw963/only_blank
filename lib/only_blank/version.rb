# frozen_string_literal: true

module OnlyBlank
  VERSION = [1, 2, 2]

  class << VERSION
    include Comparable

    def to_s
      join('.')
    end
  end
end
