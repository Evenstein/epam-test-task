# frozen_string_literal: true

# This module provides methods for print out results to console.
module ResultOutput
  def console_output(info, ending = nil)
    return puts info unless info.is_a? Hash

    output_hash(info, ending)
  end

  def output_hash(hash, ending)
    puts '-----------------------------------'
    hash.each { |k, v| puts "#{k} #{v.size} #{ending}" }
  end
end
