# frozen_string_literal: true

require 'actions/sort'

# This class represents an history of server requests
class History
  include Sort
  attr_reader :log

  def initialize
    @log = []
  end

  def log_history(item)
    @log << item
  end

  def top_visited_queries
    sort_by_count(convert_to_hash)
  end

  def top_visited_uniq_queries
    sort_by_uniq_count(convert_to_hash)
  end

  private

  def convert_to_hash
    hash = Hash.new []
    @log.each { |item| hash[item.query] += [item.ip] }

    hash
  end
end
