# frozen_string_literal: true

# This module provides methods for sorting
module Sort
  def sort_by_count(hash)
    hash.sort_by { |_k, value| value.size }.reverse.to_h
  end

  def sort_by_uniq_count(hash)
    hash.sort_by do |_k, value|
      value.uniq!
      value.size
    end.reverse.to_h
  end
end
